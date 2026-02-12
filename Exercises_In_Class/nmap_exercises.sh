nmap 10.10.10.1

nmap -sV 10.10.10.1
# Mapping out vulnerabilities using scripts
cd /usr/share/nmap/scripts
nmap -sV --script=vulscan/vulscan.nse -p22 10.10.10.10
nmap -sV --script=vulscan/vulscan.nse --script vulners -p22 10.10.10.0/24
