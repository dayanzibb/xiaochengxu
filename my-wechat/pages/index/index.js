//index.js
//获取应用实例
Page({

  /**
   * 页面的初始数据
   */
  data: {
    carrousel:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.request({
      url: 'https://www.wyptheroc.com:3000/index/carrousel',
      success:(res)=>{
        this.setData({
          carrousel:res.data.msg
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
  singleSelect:function(e){
    //console.log(e);
    wx.navigateTo({
      url: '../single/single'
    })
  },
  multiSelect:function(){
    wx.navigateTo({
      url: '../multi/multi'
    })
  },
  judgeSelect:function(){
    wx.navigateTo({
      url: '../judge/judge'
    })
  },
  fillSelect:function(){
    wx.navigateTo({
      url: '../fill/fill'
    })
  },
  shortSelect:function(){
    wx.navigateTo({
      url: '../short/short'
    })
  },
  zixunPages:function(){
    wx.reLaunch({
      url: '../zixun/zixun'
    })
  }
})