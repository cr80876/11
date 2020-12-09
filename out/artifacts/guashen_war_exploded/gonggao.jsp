<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/7
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0042)https://xn-%2Ddpqw2z7lgf8y.com/news/1.html -->
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>首页公告-挂神</title>
    <meta name="keywords" content="挂神网络科技有限公司">
    <meta name="description" content="挂神传媒平台">
    <link rel="stylesheet" href="css/layui.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <style>

    </style>
</head>

<body>
<!--导航条-->

<div class="common-header">
    <div class="common-container header-box">
        <a href="">
            <img src="pic/logo.png" alt="网站logo图片" title="" class="logoimg">
        </a>
        <ul>
            <li><a href="index.jsp">首页推荐</a></li>
            <li><a href="list.jsp">商品列表</a></li>
            <li class="header-nav-active"><a href="">最新公告</a></li>
            <li><a href="lianxi.jsp">联系我们</a></li>
        </ul>

        <div class="header-userbox">
            <p><a href="" class="userloginbtn"><i
                    class="iconfont icon-dengluyonghuming"></i>立即登录</a></p>
        </div>
    </div>
</div>

<!--导航条-->
<!-- 主体 -->

<div class="common-container">
    <div class="common-noticebox common-clearboth">
        <div class="notice-left" style="border: 1px solid #ddd;">
            <h2>首页公告</h2>
            <hr>
            <ul>
                <li><a href="">行业动态</a></li>
                <li><a href="">常见问题</a></li>
                <li><a href="">帮助信息</a></li>
                <li><a href="">最新动态</a></li>
            </ul>
        </div>
        <div class="notice-right" style="border: 1px solid #ddd;">
            <div class="noticebox-container">
                <ul>
                    <li>
                        <a href="" target="_blank">
                            <h6 style="color: #FF0000">
                                科技传媒丨共同进退丨站长心得 </h6>
                            <p><span>发布时间：2019-09-09 01:06</span></p>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank">
                            <h6 style="color: #FF0000">
                                科技传媒丨供货差价丨供货必读 </h6>
                            <p><span>发布时间：2019-09-09 01:06</span></p>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank">
                            <h6 style="color: #FF0000">
                                科技传媒丨找回密码丨解决办法 </h6>
                            <p><span>发布时间：2019-09-09 01:05</span></p>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank">
                            <h6 style="color: #FF0000">
                                科技传媒丨下载网盘丨密码:123 </h6>
                            <p><span>发布时间：2019-09-09 01:05</span></p>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank">
                            <h6 style="color: #FF0000">
                                科技传媒丨明确相关丨责任问题 </h6>
                            <p><span>发布时间：2019-09-09 01:04</span></p>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank">
                            <h6 style="color: #FF0000">
                                科技传媒丨感谢有你丨未完待续 </h6>
                            <p><span>发布时间：2019-10-18 04:46</span></p>
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>

<!-- 主体 -->
<!-- 底部 -->
<!-- 共用底部 -->


</div>

<!-- 用于加载js代码 -->

<script>
    layui.use(['laypage'], function () {
        var laypage = layui.laypage;

        laypage.render({
            elem: 'page',
            count: 6,
            curr: 1,
            jump: function (obj, first) {
                if (!first)
                    location.href = window.Think.U("news/cate", { p: obj.curr });
            },
        });
    })
</script>

<!-- 页面footer钩子，一般用于加载插件JS文件和JS代码 -->
<!-- 用于加载统计代码等隐藏元素 -->
<div style="display: none;">

</div>



<!-- 底部 -->


</body>

</html>
