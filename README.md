# Momentum2 - Penetration Testing
Penetration test of Momentum 2, a deliberately vulnerable virtual machine from VulnHub, carried out for academic purposes as part of the PTEH course.

<p align="center" style="flex; justify-items: center; align-items: center;">
  <img src="Media/icon.png" alt="Momentum: 2" width="15%"/>
</p>

# Overview
The assessment was performed in a black box approach inside an isolated lab (Proxmox VE, Kali Linux attacker), following the canonical phases of the General Penetration Testing Framework: information gathering, target discovery, enumeration and port scanning, vulnerability mapping, exploitation and post-exploitation.

<p align="center" style="flex; justify-items: center; align-items: center;">
  <img src="Media/momentum2_homepage.png" alt="Momentum: 2 - Homepage" width="60%"/>
</p>

The machine was fully compromised up to root privileges. Automated scanners did not reveal any directly exploitable high-severity flaw: the compromise was achieved through manual code review, chaining a backup-file exposure, hard-coded credentials, an unrestricted file upload and an overly permissive sudo configuration.

## Info and credits
This project was created for the course "Penetration Testing and Ethical Hacking" at the Università degli Studi di Salerno. 
- [Momentum: 2 - VulnHub](https://www.vulnhub.com/entry/momentum-2,702/)

## License
This project is licensed under the MIT License. See the LICENSE file for details.
