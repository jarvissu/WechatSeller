<html>
<#include "../common/header.ftl">
<body>

<div id="wrapper" class="toggled">
    <#-- 边栏slidebar -->
    <#include "../common/nav.ftl">
    <#-- 内容Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-4 column">
                    <table class="table table-bordered table-hover table-condensed">
                        <thead>
                        <tr>
                            <th>订单Id</th>
                            <th>订单总金额</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>${orderDTO.orderId}</td>
                            <td>${orderDTO.orderAmount}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <#-- 订单详情列表 -->
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-bordered table-hover table-condensed">
                        <thead>
                        <tr>
                            <th>商品Id</th>
                            <th>商品名称</th>
                            <th>单价</th>
                            <th>数量</th>
                            <th>总额</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list orderDTO.orderDetailList as orderDetail>
                        <tr>
                            <td>${orderDetail.detailId}</td>
                            <td>${orderDetail.productName}</td>
                            <td>${orderDetail.productPrice}</td>
                            <td>${orderDetail.productQuantity}</td>
                            <td>${orderDetail.productQuantity * orderDetail.productPrice}</td>
                            </#list>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-12 column">
                <#if orderDTO.orderStatus == 0>
                    <a href="/sell/seller/order/finish?orderId=${orderDTO.orderId}">
                    <button type="button" class="btn btn-lg btn-primary">完结订单</button>
                    </a>
                    <a href="/sell/seller/order/cancel?orderId=${orderDTO.orderId}">
                    <button type="button" class="btn btn-lg btn-danger">取消订单</button>
                    </a>
                </#if>
            </div>
    </div>
    </div>
</div>
</body>
</html>
