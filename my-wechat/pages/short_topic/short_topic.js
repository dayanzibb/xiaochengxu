// pages/fill_topic/fill_topic.js
var util = require("../../utils/common.js");
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list: [],
    id: 0,
    isShow: false
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //console.log(options)
    wx.request({
      url: 'https://www.wyptheroc.com:3000/select/short_table',
      data: {
        sid: options.sid
      },
      success: (res) => {
        var list = res.data.msg;
        util.random_numfive(list, (res) => {
          this.setData({
            list: res
          })
        })
        //console.log(this.data.list)
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
  showkey: function () {
    this.setData({
      isShow: true
    })
  },
  next: function () {
    if (this.data.id < 4) {
      this.setData({
        id: ++this.data.id,
        key: '',
        isShow: false
      });
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
        key: '',
        isShow: false
      });
    } else {
      wx.showToast({
        title: '当前是第一页',
        duration: 2000,
        icon: 'none'
      })
    }
  }
})