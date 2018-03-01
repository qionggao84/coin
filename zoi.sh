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
echo "cd /home/customer/cpuminer-opt" >> zzzz.sh
echo "./cpuminer -a lyra2z330 -o stratum+tcp://zoi-pool3.chainsilo.com:3032 -u qionggao.1 -p x" >> zzzz.sh
chmod 0777 zzzz.sh
output "Add cronjob"
crontab -l > mycron
echo "@reboot /home/customer/cpuminer-opt/zzzz.sh" >> mycron
crontab mycron
rm mycron
sudo reboot now
