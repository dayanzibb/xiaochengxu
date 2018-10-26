const express=require("express");
var router=express.Router();
var pool=require("../pool");

//首页轮播图加载
router.get("/carrousel",(req,res)=>{
	var sql = `SELECT id,img_url FROM carrousel`;
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result!=''){
			res.send({code:1,msg:result});
		}else{
			res.send({code:-1,msg:'搜索结果为空'});
		}
	})
})

//查找用户是否存在数据库中，即之前是否登陆过
router.get("/find",(req,res)=>{
	var name=req.query.uname;
	var sql=`SELECT  * FROM user WHERE name=?`;
	pool.query(sql,[name],(err,result)=>{
		console.log(result)
		if(err) throw err;
		if(result==''){
			res.send({code:-1,msg:"用户为空"});
		}else{
			res.send({code:1,msg:result});
		}
	})
})
//用户之前没有登陆过，将用户信息插入数据库
router.get("/login",(req,res)=>{
	var name=req.query.uname;
	var address=req.query.address;
	var pic=req.query.pic;
	var sql=`INSERT INTO user VALUES(NULL,?,?,NULL,NULL,NULL,NULL,?)`;
	pool.query(sql,[name,address,pic],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:'插入成功'});
	})
})
//用户修改基本信息后，提交到数据库更新
router.get("/update",(req,res)=>{
	var uid=req.query.uid;
	var city=req.query.city;
	var nickName=req.query.nickName;
	var birthday=req.query.birthday;
	var phone=req.query.phone;
	var email=req.query.email;
	var sql=`UPDATE user set city=?,nickName=?,birthday=?,phone=?,email=? WHERE id=?`;
	pool.query(sql,[city,nickName,birthday,phone,email,uid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:'更新成功'});
	})
})
//资讯页面
router.get("/zixun_content",(req,res)=>{
	var sql=`SELECT cid,title,time,click,img FROM zixun_content`;
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:result});
	})
})
//资讯详情页
router.get("/zixun_detail",(req,res)=>{
	var cid = req.query.cid;
	var sql=`SELECT cid,title,time,click,score,width,img,newsfrom,content FROM zixun_content WHERE cid=?`;
	pool.query(sql,[cid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:result});
	})
})
//资讯页面打分更新
router.get("/zixun_news_update",(req,res)=>{
	var cid=req.query.cid;
	var click=req.query.click;
	var score=req.query.score;
	var width=req.query.width;
	var sql=`UPDATE zixun_content set click=?,score=?,width=? WHERE cid=?`;
	pool.query(sql,[click,score,width,cid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:'更新成功'});
	})
})
//资讯页面评论查询
router.get("/zixun_detail_comment",(req,res)=>{
	var cid = req.query.cid;
	var sql=`SELECT  userName,time,content FROM comment WHERE cid=? ORDER BY id DESC`;
	pool.query(sql,[cid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:result});
	})
})
//通过用户名查询用户头像地址
router.get("/zixun_detail_pic",(req,res)=>{
	var userName = req.query.userName;
	var sql=`SELECT  pic FROM user WHERE name=?`;
	pool.query(sql,[userName],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:result});
	})
})
//用户的评论提交到后台
router.get("/zixun_user_comment",(req,res)=>{
	var userName = req.query.userName;
	var cid=req.query.cid;
	var times=req.query.times;
	var contents=req.query.contents;
	var sql=`INSERT INTO comment VALUES(NULL,?,?,?,?)`;
	pool.query(sql,[cid,userName,times,contents],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:'插入成功'});
	})
})

router.get("/zixun_comment",(req,res)=>{
	var cid=req.query.cid;
	var sql=`select user.pic, comment.userName, comment.time, comment.content from user inner join comment on user.name = comment.userName  and comment.cid = ? order by comment.id DESC`;
	pool.query(sql,[cid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:result});
	})
})

module.exports=router;