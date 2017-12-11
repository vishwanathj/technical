#! /bin/bash

cat > /tmp/nodejsapp.js << EOL
const http = require('http');
const port = 3000;
var request = require('request')
var os = require('os')
var nics = os.networkInterfaces();

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  request.get('http://127.0.0.1:8080'+req.url).pipe(res)
}).listen(port, nics['eth0'][0]['address']);
EOL

cd /tmp
sudo npm install request

forever start /tmp/nodejsapp.js
