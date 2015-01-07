#/bin/bash
sudo apt-get update -y
sudo apt-get install couchdb -y
sudo apt-get -y install nodejs node
sudo apt-get -y install npm
echo 'var http = require("http");' > index.js
echo 'http.createServer(function (req, res) {'>> index.js
echo '  res.writeHead(200, {"Content-Type": "text/plain"});'>> index.js
echo '  res.end("Hello World\n");'>> index.js
echo '}).listen(8080);'>> index.js
echo 'console.log("Server running at http://:8080/");'>> index.js
#nodejs index.js
