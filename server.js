const express = require('express')
const app = express();
const cors = require('cors');
var bodyParser = require('body-parser');

app.use(cors());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

var knex = require('knex')({
    client: 'mysql',
    connection: {
      host : 'localhost',
      port :3309,
      user : 'root',
      password : '1234',
      database : 'react'
    },
	pool :{
		afterCreate:(conn,done)=>{
			conn.query("SET NAMES UTF8",(err)=>{
				done(err,conn);
			})
		}
	}
  });


app.get('/', async (req,res)=>{
   let sql = "select * from person";
   let raw =  await knex.raw(sql);
   res.json(raw[0]);
})

app.post('/',async (req,res)=>{
    let data =req.body;
    console.log(data);
    await knex('person').insert(data);
    res.send('ok')

})

app.listen(4000, () => console.log('API listening on port 4000!'))