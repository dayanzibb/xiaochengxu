// pages/mynews/mynews.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    date:'',
    user:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that=this;
    wx.getUserInfo({
      success: function (res) {
        var uname = res.userInfo.nickName;
        //console.log(res)
        wx.request({
          url: 'https://www.wyptheroc.com:3000/index/find',
          data: { uname: uname },
          success: (res) => {
            that.setData({
              user:res.data.msg[0],
              date:res.data.msg[0].birthday
            })
            //console.log(that.data.date)
          }
        })
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
  bindDateChange: function (e) {
    console.log('picker发送选择改变，携带值为', e.detail.value)
    this.setData({
      date: e.detail.value
    })
  },
  formSubmit: function (e) {
    wx.showToast({
      title: '信息更新成功',
      duration: 2000,
      icon: 'none'
    })
    console.log('form发生了submit事件，携带数据为：', e.detail.value);
    wx.request({
      url: 'https://www.wyptheroc.com:3000/index/update',
      data: { uid: this.data.user.id, city: e.detail.value.address, nickName: e.detail.value.uname, birthday: this.data.date, phone: e.detail.value.num, email: e.detail.value.email},
      success: (res) => {
          console.log(res)
      }
    })
  }
})