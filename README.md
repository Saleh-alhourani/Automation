## Automate The World 
is a reposetory I have created because I'm too layze to repeat some work more than one time , so what I do is to spent more time creating a script one time and then forget about it. 

### ConfigVPS.sh 
will install the basic security tools that you may find it useful in Web application Pentesting and API Pentesting 
  this script will  do the following : 
  - apt update && apt upgrade && apt dist-upgrade 
  - Make 3 directories in /opt as following: 
    - /opt/tools :    contains tools that doesn't existed in apt or snap.
    - /opt/wordlist : contains wordlist for directory brute-forcing, subdomain enum... 
    - /opt/lab :      contains all the traning labs.  
  - install important tools : 
    - python3-pip unzip  apache2 firefox curl git whois  docker.io docker-compose go
  - install security tools : 
    - [NMAP](https://github.com/nmap/nmap) 
    - [Metasploit](https://www.metasploit.com/)
    - [OWASP Amass](https://github.com/OWASP/Amass)
    - [kiterunner](https://github.com/assetnote/kiterunner)
    - [EyeWitness](https://github.com/FortyNorthSecurity/EyeWitness)
  - Download Wordlists 
    - [SecLists](https://github.com/danielmiessler/SecLists).
    - [Hacking APIs](https://github.com/hAPI-hacker/Hacking-APIs).
    - [Jhaddix all.txt](https://gist.github.com/jhaddix/86a06c5dc309d08580a018c66354a056).
    - [assetnote commonspeak2](https://github.com/assetnote/wordlists)
  


