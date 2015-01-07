#/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update -y
sudo apt-get install -y mongodb-org git
sudo service mongod start
sudo apt-get -y update
sudo apt-get -y install nodejs node
sudo apt-get -y install npm
echo 'var http = require("http");' > index.js
echo 'http.createServer(function (req, res) {'>> index.js
echo '  res.writeHead(200, {"Content-Type": "text/plain"});'>> index.js
echo '  res.end("Hello World\n");'>> index.js
echo '}).listen(8080);'>> index.js
echo 'console.log("Server running at http://:8080/");'>> index.js
#nodejs index.js
