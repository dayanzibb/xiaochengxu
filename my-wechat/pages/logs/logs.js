//logs.js
const util = require('../../utils/util.js')
const app = getApp();
Page({
  data: {
    hasUserInfo: false,
    user:[],
    display:true
  },
  onLoad: function () {
  
  },
  onShow:function(){
    var uname=this.data.user.name;
    wx.request({
      url: 'https://www.wyptheroc.com:3000/index/find',
      data: { uname: uname },
      success:(res)=>{
        //console.log(res)
        this.setData({
          user: res.data.msg[0]
        })
      }
    })
  },
  click:function(){
    wx.navigateTo({
      url: '../mynews/mynews',
    })
  },
  getInfo(res){
    //console.log(res)
    var that = this;
    var uname = res.detail.userInfo.nickName;
    wx.setStorageSync('key', uname);
    var address = res.detail.userInfo.province;
    var pic = res.detail.userInfo.avatarUrl;
        //console.log(pic);
        //console.log(uname,address);
        wx.request({
          url: 'https://www.wyptheroc.com:3000/index/find',
          data: { uname: uname },
          success: (res) => {
            //console.log(res.data.code);
            if (res.data.code == -1) {
              wx.request({
                url: 'https://www.wyptheroc.com:3000/index/login',
                data: { uname: uname, address: address, pic: pic },
                success: (res) => {
                  console.log(res.data.msg);
                  that.setData({
                    user: res.data.msg,
                    hasUserInfo: true
                  })
                }
              })
            } else {
              that.setData({
                user: res.data.msg[0],
                hasUserInfo: true
              })
              //console.log(that.data.user);
            }
          }
        })

  }
})
