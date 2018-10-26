const express=require("express");
var router=express.Router();
var pool=require("../pool");

//单选题目录
router.get("/single",(req,res)=>{
    var sql=`SELECT id,sid,color,title,content from single`;
    pool.query(sql,(err,result)=>{
		if (err) throw err;
		if(result!=''){
			res.send({code:1,msg:result});
		 }else{
		 	res.send({code:-1,msg:'查询结果为空'});
		 }
    });
});

//单选题题目
router.get("/single_table",(req,res)=>{
    var sid=req.query.sid;
    var sql=`SELECT id,title,answer,sid,KeyA,KeyB,KeyC,KeyD from single_table WHERE sid=?`;
    pool.query(sql,[sid],(err,result)=>{
    	if(err) throw err;
    	if(result!=''){
    		res.send({code:1,msg:result});
		 }else{
		 	res.send({code:-1,msg:'查询结果为空'});
		 }
    })
});

router.get("/single_answer",(req,res)=>{
    var aid=req.query.aid;
    var sql=`SELECT KeyA,KeyB,KeyC,KeyD from single_table WHERE id=?`;
    pool.query(sql,[aid],(err,result)=>{
    	if(err) throw err;
    	if(result!=''){
    		res.send({code:1,msg:result});
		 }else{
		 	res.send({code:-1,msg:'查询结果为空'});
		 }
    })
});

//多选题题目
router.get("/multi_table",(req,res)=>{
    var sid=req.query.sid;
    var sql=`SELECT id,title,answer,sid,KeyA,KeyB,KeyC,KeyD from multi_table WHERE sid=?`;
    pool.query(sql,[sid],(err,result)=>{
        if(err) throw err;
        if(result!=''){
            res.send({code:1,msg:result});
         }else{
            res.send({code:-1,msg:'查询结果为空'});
         }
    })
});

router.get("/multi_answer",(req,res)=>{
    var aid=req.query.aid;
    var sql=`SELECT KeyA,KeyB,KeyC,KeyD from multi_table WHERE id=?`;
    pool.query(sql,[aid],(err,result)=>{
        if(err) throw err;
        if(result!=''){
            res.send({code:1,msg:result});
         }else{
            res.send({code:-1,msg:'查询结果为空'});
         }
    })
});

//判断题题目
router.get("/judge_table",(req,res)=>{
    var sid=req.query.sid;
    var sql=`SELECT id,title,answer,sid,KeyA,KeyB from judge_table WHERE sid=?`;
    pool.query(sql,[sid],(err,result)=>{
        if(err) throw err;
        if(result!=''){
            res.send({code:1,msg:result});
         }else{
            res.send({code:-1,msg:'查询结果为空'});
         }
    })
});

router.get("/judge_answer",(req,res)=>{
    var aid=req.query.aid;
    var sql=`SELECT KeyA,KeyB from judge_table WHERE id=?`;
    pool.query(sql,[aid],(err,result)=>{
        if(err) throw err;
        if(result!=''){
            res.send({code:1,msg:result});
         }else{
            res.send({code:-1,msg:'查询结果为空'});
         }
    })
});
//填空题题目
router.get("/fill_table",(req,res)=>{
    var sid=req.query.sid;
    var sql=`SELECT id,title,answer,sid from fill_table WHERE sid=?`;
    pool.query(sql,[sid],(err,result)=>{
        if(err) throw err;
        if(result!=''){
            res.send({code:1,msg:result});
         }else{
            res.send({code:-1,msg:'查询结果为空'});
         }
    })
});

//问答题题目
router.get("/short_table",(req,res)=>{
    var sid=req.query.sid;
    var sql=`SELECT id,title,answer,sid from short_table WHERE sid=?`;
    pool.query(sql,[sid],(err,result)=>{
        if(err) throw err;
        if(result!=''){
            res.send({code:1,msg:result});
         }else{
            res.send({code:-1,msg:'查询结果为空'});
         }
    })
});





module.exports=router;