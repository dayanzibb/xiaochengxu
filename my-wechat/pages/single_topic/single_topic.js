// pages/single_topic/single_topic.js
var util = require("../../utils/common.js");
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list: [],
    id: 0,
    answer: [],
    key: '',
    isRight: false,
    isShow: false,
    solution: ''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    //console.log(options)
    wx.request({
      url: 'https://www.wyptheroc.com:3000/select/single_table',
      data: {
        sid: options.sid
      },
      success: (res) => {
        var list = res.data.msg;
        util.random_num(list, (res) => {
          this.setData({
            list: res
          })
          //console.log(this.data.list[this.data.id].id)
          wx.request({
            url: 'https://www.wyptheroc.com:3000/select/single_answer',
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
  selected: function(e) {
    //console.log(e)
    //console.log(e.target.dataset.key)
    this.setData({
      key: e.target.dataset.index,
      solution: e.target.dataset.key
    })
  },
  showkey: function(e) {
    var result = e.currentTarget.dataset.answer;
    var answer = this.data.solution.slice(0, 1);
    if (result == answer) {
      this.setData({
        isRight: true
      })
    } else {
      this.setData({
        isRight: false
      })
    }
    this.setData({
      isShow: true
    })
  },
  next: function() {
    if (this.data.id < 9) {
      this.setData({
        id: ++this.data.id,
        answer: [],
        key: '',
        isRight: false,
        isShow: false,
        solution: ''
      });
      wx.request({
        url: 'https://www.wyptheroc.com:3000/select/single_answer',
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
  prev: function() {
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
        url: 'https://www.wyptheroc.com:3000/select/single_answer',
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