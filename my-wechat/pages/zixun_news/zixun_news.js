// pages/zixun_news/zixun_news.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list: {},
    showModal: false,
    score: true,
    scored: true,
    showContent: true,
    list_last:[],
    cid:0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    wx.request({
      url: 'https://www.wyptheroc.com:3000/index/zixun_detail',
      data: {
        cid: options.cid
      },
      success: (res) => {
        //console.log(res)
        this.setData({
          list: res.data.msg[0],
          cid:options.cid
        })
        //console.log(options.cid);
        wx.request({
          url: 'https://www.wyptheroc.com:3000/index/zixun_comment',
          data: {
            cid: options.cid
          },
          success: (res) => {
            if (res.data.msg != '') {
              this.setData({
                list_last:res.data.msg
              })
            } else {
              this.setData({
                showContent: false
              })
            }
          }
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  },
  showDialogBtn: function() {
    this.setData({
      showModal: true
    })
  },
  /**
   * 隐藏模态对话框
   */
  hideModal: function() {
    this.setData({
      showModal: false
    });
  },
  /**
   * 对话框取消按钮点击事件
   */
  onCancel: function() {
    this.hideModal();
  },
  /**
   * 对话框确认按钮点击事件
   */
  bindFormSubmit:function(e){
    var that=this;
    this.hideModal();
    var contents = e.detail.value.textarea;
    if(contents==''){
      wx.showToast({
        title: '评论内容不能为空',
        duration: 2000,
        icon: 'none'
      })
      return
    }
    var time=new Date();
    this.cal_date(time,(date)=>{
      var times=date; 
      var uname = wx.getStorageSync('key');
      if(uname!=''){
          var cid=that.data.cid;
          console.log(contents,times,uname,cid);
          wx.request({
            url: 'https://www.wyptheroc.com:3000/index/zixun_user_comment',
            data:{
              cid:cid,
              userName:uname,
              times:times,
              contents:contents
            },
            success:(res)=>{
              if(res.data.code==1){
                wx.showToast({
                  title: '发表评论成功',
                  duration: 2000,
                  icon: 'none'
                })
                wx.request({
                  url: 'https://www.wyptheroc.com:3000/index/zixun_comment',
                  data: {
                    cid:cid
                  },
                  success: (res) => {
                    if (res.data.msg != '') {
                      that.setData({
                        list_last: res.data.msg,
                        showContent:true
                      })
                    } else {
                      that.setData({
                        showContent: false
                      })
                    }
                  }
                })
              }
            }
          })
      }else{
        wx.showToast({
          title: '登录后才能评价，2s后跳转到登录页面',
          duration: 2000,
          icon: 'none'
        })
        setTimeout(()=>{
          wx.reLaunch({
            url: '../logs/logs',
          })   
        },3000)
      }
    })
  },
  //将日期转为2018-10-01 10:30 这种格式
  cal_date(date,fun){
    var time=date;
    var year = time.getFullYear();
    var month = time.getMonth() + 1;
    if(month<10){month='0'+month}
    var date = time.getDate();
    if(date<10){date='0'+date}
    var hour = time.getHours();
    if(hour<10){hour='0'+hour}
    var min = time.getMinutes();
    if(min<10){min='0'+min}
    var times = year + '-' + month + '-' + date + ' ' + hour + ':' + min;
    return fun(times);
  },
  //计算评分分数以及星星的长度
  cal_score(num, fun) {
    wx.showToast({
      title: '打分成功',
      duration: 2000,
      icon: 'none'
    })
    //console.log(num);
    var old_score = parseInt(this.data.list.score);
    var old_width = parseInt(this.data.list.width);
    var new_width = (num * 140 / 5 + old_width) / 2;
    var new_score = new_width * 5 / 140;
    //console.log(new_width, new_score);
    return fun(new_width, new_score);
  },
  score: function(event) {
    //console.log(this.data.list.cid)
    if (this.data.scored) {
      this.setData({
        scored: false
      });
      this.data.list.click++;
      //console.log(this.data.list.click++);
      //console.log(event.target.dataset.score);
      var click = this.data.list.click;
      var cid = this.data.list.cid;
      var num = event.target.dataset.score;
      this.cal_score(num, (width, score) => {
        //console.log(width,score);
        //console.log(click)
        wx.request({
          url: 'https://www.wyptheroc.com:3000/index/zixun_news_update',
          data: {
            cid: cid,
            score: score,
            click: click,
            width: width
          },
          success: (res) => {
            console.log(res)
            var cid=this.data.cid;
            wx.request({
              url: 'https://www.wyptheroc.com:3000/index/zixun_detail',
              data: {
                cid: cid
              },
              success: (res) => {
                //console.log(res)
                this.setData({
                  list: res.data.msg[0]
                })
              }
            })
          }
        })
      })
    } else {
      wx.showToast({
        title: '请不要重复打分',
        duration: 2000,
        icon: 'none'
      })
    }
    this.setData({
      score: false
    })
  }
})



//select user.pic, comment.userName, comment.time, comment.content from user inner join comment on user.name = comment.userName  and comment.cid = 2;
