<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.cdvtc.guashen.model.Waigua" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cdvtc.guashen.dao.GuashenDao" %>
<%@ page import="com.cdvtc.guashen.dao.GuashenDaoimpl" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/7
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>挂神</title>

    <script type="text/javascript">
        (function () {
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
        <a href="/index.html">
            <img src="pic\logo.png" alt="logo图片" title=""
                 class="logoimg">
        </a>
        <ul>
            <li><a href="index.jsp">首页推荐</a></li>
            <li class="header-nav-active"><a href="/goodscate/:pid.html">商品列表</a></li>
            <li><a href="gonggao.jsp">最新公告</a></li>
            <li><a href="lianxi.jsp">联系我们</a></li>
        </ul>

        <div class="header-userbox">
            <p><a href="/login.html" class="userloginbtn"><i class="iconfont icon-dengluyonghuming"></i>立即登录</a></p>
        </div>
    </div>
</div>

<!--导航条-->
<!-- 主体 -->

<div class="common-container goodslist-container">
    <!--条件-->
    <div class="goodslist-menu">




        <div class="goodslist-header">
            <div class="index-header-search">
                <form class="layui-form" action="/goodscate/index.html" method="post">
                    <div class="index-header-searchtype">商品搜索</div>
                    <input type="text" class="" name="_keyword">
                    <button class="layui-btn" lay-submit lay-filter="search">搜索商品</button>
                </form>
            </div>
            <p>商品目录 ></p>


            <script language="javascript">
                layui.use('form', function () {
                    var form = layui.form;

                    //监听提交
                    form.on('submit(search)', function (data) {
                        return true;
                    });
                });
            </script>
        </div>
        <div class="goodslist-body">
            <form class="layui-form" action="/goodscate/:pid.html" method="post" id="queryForm" name="queryForm">
                <input type="hidden" name="pid">
                <input type="hidden" name="cid">
                <input type="hidden" name="_order_field">
                <input type="hidden" name="_order_way">
                <input type="hidden" name="_p">
                <div class="goodsmenu-items" style="border-bottom: 1px solid #dcdcdc;">
                    <div class="gooslist-body-left">所有分类</div>
                    <div class="gooslist-body-right">
                        <a href="javascript:void(0);" data-key="pid" data-value="2" data-type="condition"
                           style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【游戏帐号＿购买中心】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="3" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＰＵＢＧ全功能１区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="4" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＰＵＢＧ全功能２区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="5" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＰＵＢＧ单板透视区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="6" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＰＵＢＧ插件购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="7" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【穿越火线单板透视区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="8" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【穿越火线单板自瞄区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="9" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【穿越火线透视自瞄区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="10" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【穿越火线生化挑战区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="11" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【穿越火线变态购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="12" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【使命召唤１６购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="13" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【逆　战＿商品购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="14" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【逃离塔科夫购买专区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="15" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＡＰＥＸ＿软件购买】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="16" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＤＮＦ＿全自动专区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="17" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＤＮＦ＿脚本购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="18" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【刺激战场国际服专区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="19" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【和平精英模拟器专区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="20" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【和平精英手游购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="21" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【英雄联盟脚本购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="22" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【王者荣耀脚本购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="23" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【彩虹六号软件购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="24" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＣＳＧＯ软件购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="25" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【ＱＱ飞车软件购买区】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="486" data-type="condition"
                            style="border: 1px solid #FF0000;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF0000; ">【糖豆原神＿软件购买】</a><a
                            href="javascript:void(0);" data-key="pid" data-value="487" data-type="condition"
                            style="border: 1px solid #FF00FF;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF00FF; ">客服在线时间:24小时！</a><a
                            href="javascript:void(0);" data-key="pid" data-value="488" data-type="condition"
                            style="border: 1px solid #FF00FF;  float: left; display: inline-block; line-height: 20px; padding: 0px 5px;  color:#FF00FF; ">
                    </a> </div>
                </div>
                <div class="goodsmenu-items" style="border-bottom: 1px solid #dcdcdc;">

                    <div class="gooslist-body-left"></div>
                    <div class="gooslist-body-right">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--商品列表-->
    <div class="goodslist-box">
        <div class="goodsbox-header">
            <ul>
                <li class="choose-menu-active"><a href="javascript:void(0);" data-type="sort" data-key=""
                                                  data-value="">综合排序</a></li>
                <li><a href="javascript:void(0);" data-type="sort" data-key="sj" data-value="">上架时间</a></li>
                <li><a href="javascript:void(0);" data-type="sort" data-key="xl" data-value="">销量</a></li>
                <!-- <li><a href="javascript:void(0);" data-type="sort" data-key="pj" data-value="">评价</a></li> -->
            </ul>
            <img src="">
        </div>
        <div class="goodsbox-container">
            <%
                GuashenDao dao = new GuashenDaoimpl();
                List<Waigua> waiguaList = dao.getAllWaigua();
                pageContext.setAttribute("waiguaList", waiguaList);
            %>
            <c:forEach items="${waiguaList}" var="waiguaList">
            <div class="goodsbox-items" data-gooods-id="1813">
                <div class="goodsbox-left">
                    <a href="javascript:void(0);">
                        <img src="pic/logo.png"
                             alt="pubg全能外挂"
                             title="pubg全能外挂">
                    </a>
                </div>
                <div class="goodsbox-goodsinfo">
                    <h6><a href=""
                           title="pubg全能外挂"
                           style="color:#FF0000;">${waiguaList.wgmc}</a></h6>
                    <p>客服发货</p>
                    <!--1小时内发货-->
                    <p>近期已出售<span>3168</span>次<span style="margin-left: 5px;color: #ff0000">库存缺货</span></p>
                    <p>
                        <span class="badge-auth badge-auth-p" title="热销商品">热</span> <span
                            class="badge-auth badge-auth-b" title="商品质保">保</span> <span class="badge-auth"
                                                                                        title="商家供货">商</span> </p>
                </div>
                <div class="goodsbox-price">
                    <p class="overwords">单价：<span>${waiguaList.wgjg}</span>元</p>
                    <p class="overwords">类型：<span>客服发货</span></p>
                </div>
                <div class="goodsbox-collect">
                    <i class="iconfont icon-aixin2"></i>
                </div>
                <div class="goodsbox-btn">
                    <a class="layui-btn layui-btn-normal layui-btn-sm" href="">立即购买</a>
                </div>
            </div>
            </c:forEach>
            <div id="goodslistpage" class="pagebox"></div>
        </div>
    </div>
</div>

<!-- 主体 -->
<!-- 底部 -->
<!-- 共用底部 -->

<%--<div class="common-footer common-fluid">--%>
<%--    <div class="common-container footer-box">--%>
<%--        <p>--%>

<%--            :<a href="javascript:;"></a> </br> :<a--%>
<%--                href=""></a> <a href="javascript:;"--%>
<%--                                style="margin:10px"></a> <a--%>
<%--                href=""><img--%>
<%--                src="/Public/Front/xinmeng/images/icp.png" alt=""--%>
<%--                style="margin-right: 5px;vertical-align: middle;"></a></php>--%>
<%--            <link rel='stylesheet' href='http://kefu.fa1000.cc/assets/css/index/cgwl_online.css'>--%>
<%--        <div class="cgwl-form" id="cgwl-kefu">--%>
<%--            <i class="cgwl-icon"></i>--%>
<%--            <form class="cgwl-item"--%>
<%--                  action=""--%>
<%--                  method="post" target="_blank">--%>
<%--                <input type="hidden" name="product" value=''>--%>
<%--                <input type="submit" value='客服-陈睿'>--%>
<%--            </form>--%>
<%--            <form class="cgwl-item"--%>
<%--                  action=""--%>
<%--                  method="post" target="_blank">--%>
<%--                <input type="hidden" name="product" value=''>--%>
<%--                <input type="submit" value='客服-刘云龙'>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--        <script--%>
<%--                type="text/javascript">window.$crisp = []; window.CRISP_WEBSITE_ID = "bfd8d320-97da-4aba-b6d7-3793e04dd6f4"; (function () { d = document; s = d.createElement("script"); s.src = "https://client.crisp.chat/l.js"; s.async = 1; d.getElementsByTagName("head")[0].appendChild(s); })();</script>--%>
<%--    </div>--%>
<%--</div>--%>

<!-- 用于加载js代码 -->

<script src="/Public/static/formautofill/form.js" type="text/javascript"></script>
<script type="text/javascript">
    var formObj = new Form('queryForm');
    var form_data = { "pid": 0, "cid": 0, "_p": 1, "_limit": 10, "_list_count": "161" };

    layui.use(['form', 'laypage'], function () {
        var form = layui.form;
        var laypage = layui.laypage;

        $(function () {
            //初始化查询条件
            formObj.init(form_data);
            $("#queryForm").find("a").each(function () {
                if ($(this).data("key") == "pid" && $(this).data("value") == form_data.pid)
                    $(this).addClass("menu-active");
                if ($(this).data("key") == "cid" && $(this).data("value") == form_data.cid)
                    $(this).addClass("menu-active");
            });
            $(".goodsbox-header a").each(function () {
                if ($(this).data("key") == form_data._order_field) {
                    $(this).closest(".goodsbox-header").find("li").removeClass("choose-menu-active");
                    $(this).parent().addClass("choose-menu-active");
                    if (form_data._order_way == "ASC") {
                        $(this).append("<span>↓</span>");
                    }
                    else {
                        $(this).append("<span>↑</span>");
                    }
                }
            });

            //加载用户的收藏商品
            var userinfo = get_user_info();
            if (userinfo) {
                var ids = [];
                $(".goodsbox-container .goodsbox-items").each(function () {
                    ids.push($(this).attr("data-gooods-id"));
                });
                if (ids.length) {
                    $.post(window.Think.U("goods/hasfavorite"), { ids: ids }, function (re) {
                        if (re)
                            $(".goodsbox-container .goodsbox-items").each(function () {
                                if ($.inArray($(this).attr("data-gooods-id"), re) != -1) {
                                    $(this).find(".goodsbox-collect > .iconfont").addClass("collect-active");
                                }
                            });
                    });
                }
            }
        });

        form.on('submit(category)', function (data) {
            return true;
        });

        laypage.render({
            elem: 'goodslistpage',
            count: form_data._list_count,
            curr: form_data._p,
            limit: form_data._limit,
            jump: function (obj, first) {
                if (!first) {
                    $("input[name='_p']").val(obj.curr);
                    $("#queryForm").submit();
                }
            },
        });

        var active = {
            sort: function (key, value) {
                $("input[name='_order_field']").val(key);
                var order_way = $("input[name='_order_way']").val();
                if (order_way == "DESC")
                    $("input[name='_order_way']").val("ASC");
                else if (order_way == "ASC")
                    $("input[name='_order_way']").val("DESC");
                else
                    $("input[name='_order_way']").val("DESC");
                $("#queryForm").submit();
            },
            condition: function (key, value) {
                if (key == "pid")
                    $("input[name='cid']").val(0);
                $("input[name='" + key + "']").val(value);
                $("#queryForm").submit();
            },
        };
        $('.goodsbox-header a').on('click', function () {
            var type = $(this).data('type');
            var key = $(this).data('key');
            var value = $(this).data('value');
            active[type] ? active[type].call(this, key, value) : '';
        });
        $("#queryForm").find("a").on('click', function () {
            var type = $(this).data('type');
            var key = $(this).data('key');
            var value = $(this).data('value');

            active[type] ? active[type].call(this, key, value) : '';
        });
        $('.goodsbox-container .goodsbox-items').find(".goodsbox-collect .iconfont").on("click", function () {
            var userinfo = get_user_info();
            if (!userinfo)
                location.href = window.Think.U("user/login");
            else {
                var data = {};
                data.goods_id = $(this).closest(".goodsbox-items").attr("data-gooods-id");
                var T = this;
                $.post(window.Think.U("goods/doFavorite"), data, function (re) {
                    ajaxdatadeal(re, function () {
                        if ($(T).hasClass("collect-active"))
                            $(T).removeClass("collect-active");
                        else
                            $(T).addClass("collect-active");
                    });
                });
            }
        });
    });
</script>


<div style="display: none;">

</div>




</body>

</html>
