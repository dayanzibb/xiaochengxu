//随机选取10道题
function random_num(res,fun){
  var old_list=res;
  var new_list=[];
  for(var i=0;i<10;i++){
    var num = parseInt(Math.floor(Math.random() * old_list.length));
    new_list.push(res[num]);
    old_list.splice(num,1);
  }
  return fun(new_list)
}

//随机选取5道题
function random_numfive(res, fun) {
  var old_list = res;
  var new_list = [];
  for (var i = 0; i < 5; i++) {
    var num = parseInt(Math.floor(Math.random() * old_list.length));
    new_list.push(res[num]);
    old_list.splice(num, 1);
  }
  return fun(new_list)
}
module.exports = {
  random_num: random_num,
  random_numfive:random_numfive
}