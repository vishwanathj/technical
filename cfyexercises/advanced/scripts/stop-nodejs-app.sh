#! /bin/bash

cat > /tmp/nodejsapp.js << EOL
const http = require('http');
const port = 3000;
const ip = '192.168.122.73';

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello World');
}).listen(port, ip);
EOL

forever stop /tmp/nodejsapp.js

sudo npm uninstall request

rm /tmp/nodejsapp.js
