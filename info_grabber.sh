echo -e "\n\n--------------------------"
echo -e "        HOSTNAME          "
echo -e "--------------------------"
hostname

echo -e "\n\n--------------------------"
echo -e "     IP Information       "
echo -e "--------------------------"
ifconfig eth0

echo -e "\n\n--------------------------"
echo -e "       Resolv.conf        "
echo -e "--------------------------"
cat /etc/resolv.conf | grep -v 127.0.0.1

echo -e "\n\n--------------------------"
echo -e "      Netstat IPv4        "
echo -e "--------------------------"
netstat -4rn | grep -v -e tun0 -e table

echo -e "\n\n--------------------------"
echo -e "      Netstat IPv6        "
echo -e "--------------------------"
netstat -6rn | grep -v -e tun0 -e lo -e table