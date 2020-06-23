printf " \e[32;1m[+] Installation Initialized ... \e[0m\n"

printf " \e[32;1m[+] Updating packages ... \e[0m\n"
apt update -y && apt upgrade -y
printf " \e[32;1m[+] Installing kali... \e[0m\n"
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh
mv kali.sh ../kali.sh
/data/data/com.termux/files/home/kali.sh
cd ..
rm -rf /data/data/com.termux/files/home/Termux-Kali
printf "\e[33;1m        [+]  Run '\e[32;1m./start.sh\e[33;1m' command to start Kali  \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[32;1m[+]  Follow me on  [+]  \e[0m\n"
printf "\e[32;1m     [+]  Youtube  :  youtube.com/techpanther     [+]  \e[0m\n"
printf "\e[32;1m     [+]  Instagram:  instagram.com/techpanther   [+]  \e[0m\n"
printf "\e[32;1m     [+]  Facebook :  facebook.com/techpanther22  [+]  \e[0m\n"
printf "\e[32;1m     [+]  Blog     :  techpanther.in              [+]  \e[0m\n"
printf "\e[32;1m     [+]  github   :  github.com/techpanther22[+]  \e[0m\n"
exit
