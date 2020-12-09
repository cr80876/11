<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
<<<<<<< HEAD
  User: 陈睿
=======
  User: 刘云龙
>>>>>>> 73eb9a99a579cf779934595ff0fca8f783137eb7
  Date: 2020/11/23
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0017)http://wg1000.cn/ -->
<html lang="en">
<style>
  /*首先准备一个放图片的容器*/
  .container{
    width: 100%;
    height: 320px;
    position: relative;
  }

  /*图片样式*/
  .container img{
    position: absolute;        /*把所有图片放在同一个位置*/
    width: 110%;
    height: 400px;
    left: -10px;
    transition-duration: 1s;    /*设置过渡时间*/
    opacity: 0;                /*把所有图片变透明*/
  }
  /*图片显示开关*/
  .container img.on{
    opacity: 1;                /*用于显示图片*/
  }

  /*左右按钮 按钮用图片更好点,这里为了简便就用大于小于号*/
  .left, .right{
    position: absolute;
    top: 40%;
    width: 60px;
    height: 100px;
    line-height: 100px;
    background-color: #666;
    opacity: 0.5;
    text-align: center;
    font-size: 60px;
    color: #ccc;
    display: none;    /*先隐藏按钮*/
    cursor: pointer;    /*设置鼠标悬停时的样式*/
  }
  .left{
    left: 0;
  }
  .right{
    right: 0;
  }
  .container:hover .left, .container:hover .right{
    display: block;            /*鼠标悬停才容器范围内时显示按钮*/
  }
  .left:hover, .right:hover{
    color: #fff;
  }

  /*焦点*/
  .container ul{
    position: absolute;
    bottom: 0;
    max-width: 500px;
    left: 40%;
    top: 100%;
    padding: 5px 200px;
  }
  .container ul li{
    list-style: none;
    float: left;
    width: 10px;
    height: 10px;
    border-radius: 50%;
    margin-left: 10px;
    background-color: #ccc;
    cursor: pointer;
  }
  .container ul li.active{
    background-color: #1E9FFF;        /*焦点激活时的样式*/
  }
</style>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>挂神</title>
  <meta name="keywords" content="挂神">
  <meta name="description" content="挂神">
  <link rel="stylesheet" href="css/layui.css">
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/style.css">
  <script type="text/javascript">
    (function() {
      var ThinkPHP = window.Think = {
        "ROOT": "",
        "APP": "",
        "PUBLIC": "/Public",
        "STATIC": "/Public/static",
        "DEEP": "/",
        "MODEL": ["2", "1", "html"],
        "VAR": ["m", "c", "a"],
        "APP_DEBUG": "1",
      }
    })();
  </script>
  <script>
    function logout() {
      var result = confirm("您确定要退出当前登陆吗？");
      if (result) {
        //执行删除
        window.location.href = 'logout.jsp';
      }
    }
  </script>
</head>
<body>
<!--导航条-->

<div class="common-header">
  <div class="common-container header-box">
    <a href="">
      <img src="img/logo.jpg" alt="网站logo图片" title="" class="logoimg">
    </a>
    <ul>
      <li class="header-nav-active"><a href="">首页推荐</a></li>
      <li><a href="list.jsp">商品列表</a></li>
      <li><a href="gonggao.jsp">最新公告</a></li>
      <li><a href="lianxi.jsp">联系我们</a></li>
    </ul>

<c:if test="${sessionScope['user'] eq null}">
     <div class="header-userbox">
       <p><a href="login_user.jsp" class="userloginbtn"><i class="iconfont icon-dengluyonghuming"></i>立即登录</a></p>

     </div>
    </c:if>

    <c:if test="${sessionScope['user'] ne null}">
      <div class="header-userbox" >
        <p><a href="login_user.jsp" class="userloginbtn"><i class="iconfont icon-dengluyonghuming"></i>${sessionScope['user'].usermc}</a></p>
        <a href="loginout.jsp" class="userloginbtn" onclick="logout()">退出</a>
       </div>
    </c:if>
  </div>
</div>

<!--导航条-->
<!-- 主体 -->

<!-- 轮播 -->
<div class="container">
  <div>
    <div>
      <img class="on" src="img/5d74f019604ff.jpg" />
    </div><div>
    <img src="img/5d74f02232ec2.jpg" />
  </div><div>
    <img src="img/5d74f0272ad54.jpg" />
  </div><div>
    <img src="img/5d74f02bea75c.jpg" />
  </div>
    <div class="left"><</div>
    <div class="right">></div>
    <ul>
      <li class="active"></li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
  </div>
  <!-- 左右按钮 -->

  <!-- 焦点 -->

</div>
<script type="text/javascript">
  //1、找到container下的所有img标签,li标签,左右按钮
  var aImgs = document.querySelectorAll('.container img');
  var aLis = document.querySelectorAll('.container li');
  var btnLeft = document.querySelector('.container .left');
  var btnRight = document.querySelector('.container .right');

  // //检验是否找到
  // console.log(aImgs);
  // console.log(aLis);
  // console.log(btnLeft);
  // console.log(btnRight);

  //点击事件
  //点击按钮图片切换
  var index = 0;        //当前图片下标
  var lastIndex = 0;
  btnRight.onclick = function(){
    //记录上一张图片的下标
    lastIndex = index;
    //清除上一张图片的样式
    aImgs[lastIndex].className = '';
    aLis[lastIndex].className = '';

    index++;
    index %= aImgs.length;    //实现周期性变化
    //设置当前图片的样式
    aImgs[index].className = 'on';
    aLis[index].className = 'active';
  }
  //左边按钮类似
  btnLeft.onclick = function(){
    //记录上一张图片的下标
    lastIndex = index;
    //清除上一张图片的样式
    aImgs[lastIndex].className = '';
    aLis[lastIndex].className = '';

    index--;
    if (index < 0) {
      index = aImgs.length - 1;
    }
    //设置当前图片的样式
    aImgs[index].className = 'on';
    aLis[index].className = 'active';
  }
</script>
 <!-- 推荐目录 --> -->
<div class="common-fluid common-bottom10 index-items-recommend">
  <div class="common-container index-items-box">
    <h2>热门推荐<span>精品/热销/爆款走心推荐</span></h2>
    <div class="index-items-row">
      <div class="index-items-left">
        <a href="javascript:void(0);" title="推荐目录">
          <!--					<img src="/Public/Front/xinmeng/images/left1.png" alt="推荐目录" title="推荐目录">
--> <img src="img/5d74f08b56424.png"
         alt="推荐目录" title="推荐目录">
        </a>
      </div>
      <div class="index-items-list">
        <ul>
          <li>
            <a href="" title="绝地求生">
              <img src="img/5d7536c973059.png" alt="绝地求生" title="绝地求生">
              <div class="recommend-menu-words">
                <h6 class="overwords">绝地求生</h6>
                <p class="overwords">大吉大利 今晚吃鸡</p>
              </div>
            </a>
          </li>
          <li>
            <a href="" title="穿越火线">
              <img src="img/5d75375b10e41.png" alt="穿越火线" title="穿越火线">
              <div class="recommend-menu-words">
                <h6 class="overwords">穿越火线</h6>
                <p class="overwords">枪刚人稳 战场超神</p>
              </div>
            </a>
          </li>
          <li>
            <a href="" title="英雄联盟">
              <img src="img/5d7537b59470f.png" alt="英雄联盟" title="英雄联盟">
              <div class="recommend-menu-words">
                <h6 class="overwords">英雄联盟</h6>
                <p class="overwords">英雄 一起去超越</p>
              </div>
            </a>
          </li>
          <li>
            <a href="" title="使命召唤16">
              <img src="img/5e758a06176c7.png" alt="使命召唤16" title="使命召唤16">
              <div class="recommend-menu-words">
                <h6 class="overwords">使命召唤16</h6>
                <p class="overwords">单人游戏 复兴之作</p>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>  <!-- 最新公告，联系我们 -->
<div class="common-fluid common-bottom10">
  <div class="common-container index-items-box">
    <h2>最新公告<span>联系我们/系统公告/帮助中心</span></h2>
    <div class="index-items-row">
      <div class="index-items-left">
        <div class="contactbox">
          <div class="index-contact-qq">
            <h2><i class="iconfont icon-service1"></i>在线客服</h2>
            <p>客服QQ：<a target="_blank" href=""><i
                    class="iconfont icon-QQ"></i>1123999905</a></p>
            <p>投诉QQ：<a target="_blank" href=""><i
                    class="iconfont icon-QQ"></i>1123999917 </a></p>
            <p>客服电话：<a href="javascript:void(0);"><i class="iconfont icon-dianhua1"></i> 0085251065559</a></p>
            <p>工作时间：<i class="iconfont icon-clock"></i> 11:00-01:00</p>
          </div>

        </div>
      </div>
      <div class="index-items-words">
        <div class="news-items">
          <h6><i class="iconfont icon-gonggao2" style="font-size:17px;"></i>最新公告<a href="">&gt;&gt;</a></h6>
          <ul>
            <li>
              <a href="">科技传媒丨共同进退丨站长心得<span>2019-09-09 01:06</span></a>
            </li>
            <li>
              <a href="">科技传媒丨供货差价丨供货必读<span>2019-09-09 01:06</span></a>
            </li>
            <li>
              <a href="">科技传媒丨找回密码丨解决办法<span>2019-09-09 01:05</span></a>
            </li>
            <li>
              <a href="">科技传媒丨下载网盘丨密码:123<span>2019-09-09 01:05</span></a>
            </li>
            <li>
              <a href="">科技传媒丨明确相关丨责任问题<span>2019-09-09 01:04</span></a>
            </li>
            <li>
              <a href="">科技传媒丨感谢有你丨未完待续<span>2019-10-18 04:46</span></a>
            </li>
          </ul>
        </div>
        <div class="news-items">
          <h6><i class="iconfont icon-aixin1"></i>帮助中心<a href="">&gt;&gt;</a></h6>
          <ul>
            <li>
              <a href="" class="overwords">科技传媒丨活动公布丨正在进行<span>2019-09-26 20:07</span></a>
            </li>
            <li>
              <a href="" class="overwords">科技传媒丨项目整顿丨每周三进行<span>2019-09-26 20:05</span></a>
            </li>
            <li>
              <a href="" class="overwords">科技传媒丨下载网盘丨密码:123<span>2019-09-09 01:08</span></a>
            </li>
            <li>
              <a href="" class="overwords">科技传媒丨感谢有你丨未完待续<span>2019-10-18 04:54</span></a>
            </li>
            <li>
              <a href="" class="overwords">科技传媒丨感谢有你丨未完待续<span>2019-10-18 04:53</span></a>
            </li>
            <li>
              <a href="" class="overwords">科技传媒丨感谢有你丨未完待续<span>2019-10-18 04:48</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 用于加载js代码 -->

<script type="text/javascript">
  layui.use(['carousel', 'layer'], function() {
    var carousel = layui.carousel;
    var layer = layui.layer;
    var $ = layui.$;


    carousel.render({
      elem: '#indexbanner',
      width: '100%',
      height: '100%',
      arrow: 'hover',
      anim: 'fade'
    });


  });
</script>

<!-- 页面footer钩子，一般用于加载插件JS文件和JS代码 -->
<!-- 用于加载统计代码等隐藏元素 -->
<div style="display: none;">

</div>
</body>
</html>

=======
<html>
  <head>
    <title>挂神-游戏辅助器</title>
  </head>
  <body>
  挂神-游戏辅助器
  <A href="login_user.jsp">登陆</A>
  </body>
</html>
>>>>>>> 73eb9a99a579cf779934595ff0fca8f783137eb7
