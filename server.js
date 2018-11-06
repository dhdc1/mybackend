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
      port :3306,
      user : 'root',
      password : '112233',
      database : 'book'
    },
	pool :{
		afterCreate:(conn,done)=>{
			conn.query("SET NAMES UTF8",(err)=>{
				done(err,conn);
			})
		}
	}
  });

// r-1
app.get('/patients', async (req,res)=>{
   let sql = "select * from patient";
   let raw =  await knex.raw(sql);
   res.json(raw[0]);
})

//r-2
app.get('/patient/:cid', async (req,res)=>{
  let sql = "select * from patient where cid = ?";
  let cid = req.params.cid;
  let raw =  await knex.raw(sql,[cid]);
  res.json(raw[0]);
})

//r-3
app.delete('/patient/:cid', async (req,res)=>{
  let sql = "delete from patient where cid = ?";
  let cid = req.params.cid;
  let raw =  await knex.raw(sql,[cid]);
  res.json(raw[0]);
})


app.post('/new-patient',async (req,res)=>{
    let data =req.body;
    console.log(data);
    await knex('patient').insert(data);
    res.send('ok')

})

app.post('/new-booking',async (req,res)=>{
  let data =req.body;
  console.log(data);
  await knex('booking').insert(data);
  res.send('ok')
})

app.get('/bookings', async (req,res)=>{
  let sql = "select * from booking";
  let raw =  await knex.raw(sql);
  res.json(raw[0]);
})

app.delete('/booking/:id', async (req,res)=>{
  let sql = "delete from booking where cid = ?";
  let cid = req.params.id;
  let raw =  await knex.raw(sql,[id]);
  res.json(raw[0]);
})

app.get('/booking/:id', async (req,res)=>{
  let sql = "select * from booking where id = ?";
  let cid = req.params.id;
  let raw =  await knex.raw(sql,[id]);
  res.json(raw[0]);
})




app.listen(4000, () => console.log('Running 4000!'))