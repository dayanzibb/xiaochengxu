//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');

let https = require("https");
let fs = require("fs");

/*引入路由模块*/
var index=require("./routes/index");
var select =require("./routes/select");



var app = express();
// Configuare https
const httpsOption = {
    key : fs.readFileSync("./https/215052140270638.key"),
    cert: fs.readFileSync("./https/215052140270638.pem")
}

//var server = app.listen(3000);
https.createServer(httpsOption, app).listen(3000);

//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static(__dirname+"/public"));
/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/select",select);





