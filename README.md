# Flipper Zero Bad USB feats PEASS-ng

Currently only the winpeas fast option is working!!

I came with the idea after trying and testing some payloads from <a href="https://github.com/I-Am-Jakoby/"> I-Am-Jakoby </a> 

This tool <a href="https://github.com/carlospolop/PEASS-ng"> PEASS-ng </a> is very well know for pentesting use, with this payloads you could automatizate this task to gain privileges in a system.


Still a repo under testing but there are 2 options:

- 1 slow one: is all done in ducky script, sends you the resaults via email you have to change your smtp credentials
- 2 Fast one: A simple ducky script request a link were the payload is  alocated

### Instructions

At the momento only avaiable for discord webhook

Fork and clone the repository
Search por dc in the code and change it with your discord webhook link. Right now do it in both .txt and .ps1. (In the next days i will change it to just do it on the .txt)
Upload your changes
Get raw view from the payload and copy the link. 
Make it shorter with https://link.iamjakoby.com/ and option 307
Copy that link and put it in the .txt file. 
Copy to your flipper zero and execute!

Have fun!!

Any error or problem please open a issue, is my first payload and probably doesnt worak as expected in all computers.
### ToDo
[ ] Linpeas version
