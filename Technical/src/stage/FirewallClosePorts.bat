netstat -ano > netstat.txt
notepad netstat.txt
tasklist /svc > svclist.txt
notepad svclist.txt
netsh firewall show opmode
netsh firewall set opmode enable
netsh firewall add portopening TCP 80 HTTP enable subnet
netsh firewall add portopening UDP 137 blah enable subnet
netsh firewall add portopening UDP 138 blah enable subnet
netsh firewall add portopening TCP 139 blah enable subnet
netsh firewall add portopening TCP 445 blah enable subnet



