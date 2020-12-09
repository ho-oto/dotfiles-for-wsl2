wsl -d Ubuntu-20.04 -u root --exec sudo service ssh restart
for /F %%i in ('wsl -d Ubuntu-20.04 --exec hostname -I') do set ip=%%i
netsh interface portproxy delete v4tov4 listenport=22
netsh interface portproxy add    v4tov4 listenport=22 connectaddress=%ip%