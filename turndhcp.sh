
if [ $# != 1 ]
then
	echo "Please input arg: /o /c /h"
	exit 1
fi


if [ "$1" = "/o" ] ||[ "$1" = "-o" ]
then
	( sed -i '17i \\toption authoritative "'"1"'"' /etc/config/dhcp;
	/etc/init.d/network restart )
elif [ "$1" = "/c" ] ||[ "$1" = "-c" ]
then
	( sed -i '/authoritative/d' /etc/config/dhcp;
	/etc/init.d/network restart )
elif [ "$1" = "/h" ] ||[ "$1" = "-h" ]
then
	echo "/o turn on      /c  turn off    /h help"
else
	echo "error args"
fi


