﻿<!DOCTYPE html>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="convert" class="controllerAdmin.OrderManager"/>

<html>
    <head>
        <!-- Deverlopment-side SEO -->
        <meta charset="UTF-8">
        <meta name="description" content="Khám phá thế giới ngọt ngào tại cửa hàng bánh sinh nhật Việt Nam.
              Orange Cake cung cấp một loạt các loại bánh ngọt tươi ngon, từ bánh cupcake đa dạng hương vị 
              đến bánh tart tinh tế và bánh cookie thơm phức. Hãy đến với chúng tôi để thưởng thức những trải
              nghiệm ngọt ngào và lãng mạn không thể quên!">
        <meta name="keywords" content="Bánh, sinh nhật, bánh ngọt, Việt Nam">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="robot" content="index,follow">
        <title>Order Done</title>
        <link rel="icon" type="image" href="assets/img/favicon.png">


        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FontAwesome Styles-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- Morris Chart Styles-->
        <!-- Custom Styles-->
        <link href="assets/css/custom-styles.css" rel="stylesheet" />
        <!-- Google Fonts-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!-- TABLE STYLES-->
        <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    </head>
    <style>
        .header-control {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }

        .header-control form {
            margin: 0;
        }

        .header-control form:first-child {
            display: flex;
            align-items: center;
        }

        .header-control input[name="txt"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            width: 150px; /* Điều chỉnh chiều rộng của ô tìm kiếm */
        }

        .header-control .btn-danger {
            display: flex;
            align-items: center;
        }

        .header-control .search {
            display: flex;
            align-items: center;
        }

        .header-control .search input[name="txt"] {
            width: 100%;
            margin-right: 5px;
        }

        .header-control .search button {
            padding: 10px 15px;
            background-color: #F36A5A;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 10px;
            margin-left: 0;
        }

        /* Responsive Design */
        @media screen and (max-width: 600px) {
            .header-control {
                flex-direction: column;
                align-items: stretch;
            }

            .header-control .search input[name="txt"] {
                width: auto;
                margin-bottom: 5px;
            }
        }

    </style>
    <jsp:useBean id="a" class="dal.OrderDAO" scope="request"></jsp:useBean>
        <body>
            <div id="wrapper">
                <nav class="navbar navbar-default top-navbar" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="home"><strong><i class="icon fa fa-home"></i> SWP391-KS-G5</strong></a>

                        <div id="sideNav" href="">
                            <i class="fa fa-bars icon"></i> 
                        </div>
                    </div>

                    <ul class="nav navbar-top-links navbar-right">



                        <li class="dropdown">


                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li> <a  href="UserProfile?uid=${sessionScope.admin.getUserID()}" ><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>

                            <li class="divider"></li>
                            <li><a href="./logout">Sign out</a><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>

                    </li>

                </ul>
            </nav>
            <!--/. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <a href="dashboard"><i class="fa fa-dashboard"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap"></i> Manage<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">User Management<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="manageaccount">Customer Management</a>
                                        </li>
                                        <li>
                                            <a href="StaffManagement">Staff Management</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">News Management<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="newsmanagement">News</a>
                                        </li>
                                        <li>
                                            <a href="newscategoriesmanagement">News Category</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Product Management<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="productmanagement">Product</a>
                                        </li>
                                        <li>
                                            <a href="productcategoriesmanagement">Product Category</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Order Management<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="ordermanager">Order Management</a>
                                        </li>
                                        <li>
                                            <a href="requestorder">Order From KiotViet</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="callapi.jsp"><i class="fa fa-money"></i> KiotViet'Product Selling</a>
                        </li>
                    </ul>

                </div>
            </nav>
            <!-- /. 
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper" >
                <div class="header"> 
                    <h1 class="page-header">
                        Order Management
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="home">Home</a></li>
                        <li><a href="#">Tables</a></li>
                        <li class="active">Data</li>
                    </ol> 
                </div>
              <div> <c:if test="${mess!=null }">
                        <div class="alert alert-success" role="alert">
                            ${mess}
                        </div>
                    </c:if>
                </div>
                <div> 
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="header-control">
                                <form action="xuatorder" method="get">

                                    <button type="submit" class="btn btn-primary">
                                        Export Excel
                                    </button>
                                </form>
                                <div  >
                                    <form class="search" action="ordermanager" method="get" >   
                                        <input style="background-color: white" name="txt" type="text">
                                        <button type="submit" >
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>Order ID</th>
                                                <th>Customer Name</th>
                                                <th>Order Date</th>
                                                <th>Total amount</th>
                                                <th>Status Payment</th>
                                                <th>Status Order</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach items="${listA1}" var="ord" varStatus="loop">
                                                <tr class="gradeU">
                                                    <td>${ord.orderid}</td>
                                                    <td>${ord.user.fullName}</td>
                                                    <td>${ord.getFormattedDate()}</td>
                                                    <td>${convert.convertToVietnameseDong(ord.totalamount)}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${ord.statuspayment == 1}">
                                                                DONE
                                                            </c:when>
                                                            <c:otherwise>
                                                                PROCESSING
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td> 
                                                    <td>
                                                        <select name="statusID" id="statusSelect_${loop.index}">
                                                            <option value="PROCESSING">PROCESSING</option>
                                                            <option value="DONE">DONE</option>                                                            
                                                            <option value="CANCEL">CANCEL</option>
                                                        </select>
                                                    </td>
                                            <script>
                                                document.getElementById("statusSelect_${loop.index}").addEventListener("change", function () {
                                                    var status = this.value;
                                                    var orderId = '${ord.orderid}'; // Sử dụng orderId từ mỗi hàng

                                                    var xhr = new XMLHttpRequest();
                                                    xhr.open("POST", "ordermanager", true);
                                                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                                                    xhr.onreadystatechange = function () {
                                                        if (xhr.readyState === 4 && xhr.status === 200) {
                                                            // Xử lý phản hồi từ Servlet nếu cần
                                                            console.log("Status updated successfully");
                                                        }
                                                    };
                                                    xhr.send("orderId=" + orderId + "&status=" + status);
                                                });
                                            </script>
                                            </tr>
                                        </c:forEach>




                                        </tbody>
                                    </table>
                                    <div class="dataTables_paginate paging_simple_numbers">
                                        <ul class="pagination">

                                            <c:forEach begin="1" end="${a.numberPage}" var="i1">
                                                <li class="paginate_button" aria-current="page">
                                                    <a href="ordermanager?index1=${i1}">${i1}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>

                                    </div>



                                </div>
                                <div >

                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

            <script src="assets/js/bootstrap.min.js"></script>
            <!--             Metis Menu Js -->
            <script src="assets/js/jquery.metisMenu.js"></script>
            <!--             DATA TABLE SCRIPTS -->
            <script src="assets/js/dataTables/jquery.dataTables.js"></script>
            <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>

            <!--             Custom Js -->
            <script src="assets/js/custom-scripts.js"></script>


    </body>
</html>
<%--<c:forEach begin="1" end="${endP}" var="i">
                                        <a class="list-unstyled"  href="Home?index=${i}">${i}</a>
                                    </c:forEach>--%>