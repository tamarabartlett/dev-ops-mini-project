var http = require("http"),
	fs = require("fs")

var server = http.createServer(function(request, response) {
	var filename = "index.html"

	fs.readFile(filename, "binary", function(err, file) {
      response.writeHead(200);
      response.write(file, "binary");
      response.end();
    });
});

server.listen(8080);
console.log("Server is listening. Please visit http://localhost:8080/ in the browser");