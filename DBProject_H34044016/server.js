const config = require('./config.js');
const mysql = require('mysql');
const express = require('express');
const path = require('path');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'aquarium'
});
const app = express();
const port = config.port;

var fs = require("fs"); 
var multer = require('multer');
var fileUpload = require('express-fileupload');
app.use(fileUpload()); 
var storage =multer.diskStorage({
    destination:function (req, file, cb) {
        cb(null, path.join(__dirname, '/uploads/'));
    },
    filename:function (req, file, cb) {
        cb(null, file.fieldname+'-'+Date.now())
    }
});
var upload =multer({ storage: storage })
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser({uploadDir:'./tmp'}));
app.use(express.static("./"));
app.listen(port);

//一開始初始化介面
app.get('/', (req, res) => {
    res.sendFile(`${config.projectRoot}/index.html`);
});

//抓取目前能用的Table的名字
app.post('/table', (req, res)=>{
  try{
    let table_names="SELECT table_name FROM information_schema.tables where table_schema='aquarium'";
    connection.query(table_names, function (err, result) {
      if (err) throw err;
      res.send(JSON.stringify({success: true, result: result}));
    });
  }catch(e){
      console.log("There's a Problem in /Table");
  }
});

//取得當前Table中的Attribute名字
app.post('/attribute', (req, res)=>{
    try{
      let attribute_names = "select table_name, column_name from information_schema.columns where table_schema = \'Aquarium\' order by table_name";
    connection.query(attribute_names, function (err, result) {
      if (err) throw err;
      res.send(JSON.stringify({success: true, result: result}));
    });
      
    }catch(e){
      console.log("There's a Problem in /attribute");
    }
});

//執行select 
app.post('/select',function(req,res){
  try{
    var Query=req.body.search;
    console.log(Query);
    connection.query(Query, function (err, result) {
        if (err) throw err;
        res.send(JSON.stringify({success: true, result: result}));
      });
  }catch(e){
    console.log("There's a Problem in /select");
  }
});
//執行Delete、Insert以及Update
app.post('/DelInsUpd', function(req, res){
  try{
    let Query=req.body.search;
    console.log(Query);
    connection.query(Query, function (err, result) {
        if (err) throw err;
        let success = Query + " process successfully";
        console.log(Query + " process successfully");
        res.send(JSON.stringify({success: true, result: success}));
      });
      
  }catch(e){
    console.log("There's a Problem in /DelInsUpd");
  }

    
});

//執行Aggregate Function
app.post('/Aggregate', function(req, res){
  try{
    let Query=req.body.search;
  console.log(Query);
  connection.query(Query, function (err, result) {
      if (err) throw err;
      console.log(Query + " process successfully");
      res.send(JSON.stringify({success: true, result: result}));
    });
      
  }catch(e){
    console.log("There's a Problem in /Aggregate");
  }
});


// DBMS
connection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');
});
