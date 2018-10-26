// pages/multi_topic/multi_topic.js
var util = require("../../utils/common.js");
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    answer:[],
    id:0,
    isShow:false,
    isRight:false,
    key:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //console.log(options);
    wx.request({
      url: 'https://www.wyptheroc.com:3000/select/multi_table',
      data: {
        sid: options.sid
      },
      success: (res) => {
        var list = res.data.msg;
        util.random_numfive(list, (res) => {
          this.setData({
            list: res
          })
          //console.log(this.data.list)
          //console.log(this.data.list[this.data.id].id)
          wx.request({
            url: 'https://www.wyptheroc.com:3000/select/multi_answer',
            data: {
              aid: this.data.list[this.data.id].id
            },
            success: (res) => {
              var result = res.data.msg[0];
              //console.log(result);
              var answer_list = [];
              answer_list.push(result.KeyA);
              answer_list.push(result.KeyB);
              answer_list.push(result.KeyC);
              answer_list.push(result.KeyD);
              this.setData({
                answer: answer_list
              })
            }
          })
        });
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  showkey:function(e){
    var result=e.target.dataset.answer;
    this.setData({
      isShow:true
    })
    var answer=this.data.key;
    var list=[];
    for(var i=0;i<answer.length;i++){
      list.push(answer[i]);
    }
    list=list.sort().join("");
    if(list==result){
      this.setData({
        isRight:true
      })
    }
  },
  selected:function(e){
    var answer=e.detail.value;
    var str='';
    for(var i=0;i<answer.length;i++){
      str+=answer[i].slice(0,1)
    }
    this.setData({
      key:str
    })
  },
  next: function () {
    if (this.data.id < 4) {
      this.setData({
        id: ++this.data.id,
        answer: [],
        key: '',
        isRight: false,
        isShow: false,
        solution: ''
      });
      wx.request({
        url: 'https://www.wyptheroc.com:3000/select/multi_answer',
        data: {
          aid: this.data.list[this.data.id].id
        },
        success: (res) => {
          var result = res.data.msg[0];
          //console.log(result);
          var answer_list = [];
          answer_list.push(result.KeyA);
          answer_list.push(result.KeyB);
          answer_list.push(result.KeyC);
          answer_list.push(result.KeyD);
          this.setData({
            answer: answer_list
          })
        }
      })
    } else {
      wx.showToast({
        title: '已经是最后一页',
        duration: 2000,
        icon: 'none'
      })
    }
  },
  prev: function () {
    if (this.data.id > 0) {
      this.setData({
        id: --this.data.id,
        answer: [],
        key: '',
        isRight: false,
        isShow: false,
        solution: ''
      });
      wx.request({
        url: 'https://www.wyptheroc.com:3000/select/multi_answer',
        data: {
          aid: this.data.list[this.data.id].id
        },
        success: (res) => {
          var result = res.data.msg[0];
          //console.log(result);
          var answer_list = [];
          answer_list.push(result.KeyA);
          answer_list.push(result.KeyB);
          answer_list.push(result.KeyC);
          answer_list.push(result.KeyD);
          this.setData({
            answer: answer_list
          })
        }
      })
    } else {
      wx.showToast({
        title: '当前是第一页',
        duration: 2000,
        icon: 'none'
      })
    }
  }
})