#!/bin/bash

/bin/echo -n "Enter PASSWORD: "
read PASSWORD

/bin/echo -n "Enter CLIENTNAME: "
read CLIENTNAME

echo $PASSWORD | docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME nopass

echo $PASSWORD | docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn