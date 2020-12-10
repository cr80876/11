<%@ page import="com.cdvtc.guashen.dao.GuashenDao" %>
<%@ page import="com.cdvtc.guashen.dao.GuashenDaoimpl" %>
<%@ page import="com.cdvtc.guashen.model.Waigua" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: YCM
  Date: 2020/12/9
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/zhifu.css">
    <div class="body">
        <h1 class="mod-title">
            <%
                request.setCharacterEncoding("utf-8");
                String jg = request.getParameter("jg");
            %>
            <span class="ico-wechat"></span><span class="text">支付宝扫码支付</span>
        </h1>
        <div class="mod-ct">
            <div class="order">
            </div>
            <div class="amount">
                <span><%=jg%></span>元</div>
            <div class="qr-image" id="qrcode" title="https://qr.alipay.com/bax01351pdtpldddjoik00ae">
                <canvas width="230" height="230" style="display: none;"></canvas><img style="display: initial;" src="img/zhifu.png"></div>
            <div class="detail" id="orderDetail">
                <a href="javascript:void(0)" class="arrow"><i class="ico-arrow"></i></a>
            </div>
            <div class="tip">
                <span class="dec dec-left"></span>
                <span class="dec dec-right"></span>
                <div class="ico-scan"></div>
                <div class="tip-text">
                    <p>请使用支付宝扫一扫</p>
                    <p>扫描二维码完成支付</p>
                </div>
            </div>
            <div class="tip-text">
            </div>
        </div>
        <script src="assets/js/qrcode.min.js"></script>
        <script src="assets/js/qcloud_util.js"></script>
        <script src="assets/layer/layer.js"></script>
        <script>
            var code_url = 'https://qr.alipay.com/bax01351pdtpldddjoik00ae';
            var qrcode = new QRCode("qrcode", {
                text: code_url,
                width: 230,
                height: 230,
                colorDark: "#000000",
                colorLight: "#ffffff",
                correctLevel: QRCode.CorrectLevel.H
            });
            // 订单详情
            $('#orderDetail .arrow').click(function (event) {
                if ($('#orderDetail').hasClass('detail-open')) {
                    $('#orderDetail .detail-ct').slideUp(500, function () {
                        $('#orderDetail').removeClass('detail-open');
                    });
                } else {
                    $('#orderDetail .detail-ct').slideDown(500, function () {
                        $('#orderDetail').addClass('detail-open');
                    });
                }
            });
            // 检查是否支付完成
            function loadmsg() {
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: "getshop.php",
                    timeout: 10000, //ajax请求超时时间10s
                    data: { type: "wxpay", trade_no: "2020120911252591153" }, //post数据
                    success: function (data, textStatus) {
                        //从服务器得到数据，显示数据并继续查询
                        if (data.code == 1) {
                            layer.msg('支付成功，正在跳转中...', { icon: 16, shade: 0.01, time: 15000 });
                            setTimeout(window.location.href = data.backurl, 1000);
                        } else {
                            setTimeout("loadmsg()", 4000);
                        }
                    },
                    //Ajax请求超时，继续查询
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        if (textStatus == "timeout") {
                            setTimeout("loadmsg()", 1000);
                        } else { //异常
                            setTimeout("loadmsg()", 4000);
                        }
                    }
                });
            }
            window.onload = loadmsg();
        </script>

    </div>
</head>
<body>

</body>
</html>
