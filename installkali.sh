# This .sh file will install the KALI in the TERMUX CLI in Android devices.

printf " \e[32;1m[+] Installation Initialized ... \e[0m\n"
printf "\e[0m\n"
printf " \e[32;1m[+] Checking Internet Connection\e[0m\n"
printf "\e[0m\n"
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  printf "\e[32;1m[+]  Internet is working  [+]\e[0m\n"
else
  printf "\e[31;1mInternet is not working\e[0m\n"
  printf "\e[31;1mPlease connect to Internet\e[0m\n"
  printf "\e[31;1mExit ...\e[0m\n"
  exit
fi
printf "\e[0m\n"

printf "hactoberfest"

printf " \e[32;1m[+] Updating packages ... \e[0m\n"
apt update -y && apt upgrade -y
printf " \e[32;1m[+] Installing kali... \e[0m\n"
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh
printf " \e[32;1m[+] Settings up kali... \e[0m\n"
mv kali-fs start-kali.sh kali-binds kali.sh ../ -f
figlet FINISH | lolcat
printf "\e[31;1m[+]  First time use : \e[0m\n"
printf "\e[33;1m        [+]  Run '\e[32;1mcd ..\e[33;1m' command \e[0m\n"
printf "\e[33;1m        [+]  Run '\e[32;1m./start-kali.sh\e[33;1m' command to start Kali  \e[0m\n"
printf "\e[0m\n"
printf "\e[31;1m[+]  How to use : \e[0m\n"
printf "\e[33;1m        [+]  Open Termux Application \e[0m\n"
printf "\e[33;1m        [+]  Run '\e[32;1m./start-kali.sh\e[33;1m' command to start Kali  \e[0m\n"
printf "\e[0m\n"
printf "\e[32;1m[+]  Follow me on  [+]  \e[0m\n"
printf "\e[32;1m     [+]  Youtube  :  youtube.com/techpanther     [+]  \e[0m\n"
printf "\e[32;1m     [+]  Instagram:  instagram.com/techpanther   [+]  \e[0m\n"
printf "\e[32;1m     [+]  Facebook :  facebook.com/techpanther22  [+]  \e[0m\n"
printf "\e[32;1m     [+]  Blog     :  techpanther.in              [+]  \e[0m\n"
printf "\e[32;1m     [+]  github   :  github.com/techpanther22    [+]  \e[0m\n"
figlet Techpanther | lolcat
exit
