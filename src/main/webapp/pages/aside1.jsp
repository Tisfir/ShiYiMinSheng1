<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- 导航侧栏 -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>张猿猿</p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li class="header">菜单</li>

            <li id="admin-index"><a href="../index.jsp"><i class="fa fa-home"></i> <span>首页</span></a></li>

            <!-- 菜单 -->



            <li class="treeview">
                <a href="#">
                    <i class="fa fa-fw fa-gears"></i> <span>系统操作</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="admin-login">
                        <a href="all-admin-login.html">
                            <i class="fa fa-circle-o"></i> 登录
                        </a>
                    </li>

                    <li id="admin-register">
                        <a href="all-admin-register.html">
                            <i class="fa fa-circle-o"></i> 注册
                        </a>
                    </li>


                    <li id="admin-profile">
                        <a href="/user/findall">
                            <i class="fa fa-circle-o"></i> 用户管理
                        </a>
                    </li>

                    <li id="admin-invoice">
                        <a href="all-admin-invoice.html">
                            <i class="fa fa-circle-o"></i> 角色管理
                        </a>
                    </li>


                </ul>
            </li>



            <li class="treeview">
                <a href="#">
                    <i class="fa fa-fw fa-database"></i> <span>基础数据</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">


                    <li id="charts-flot">
                        <a href="">
                            <i class="fa fa-circle-o"></i> 商品管理
                        </a>
                    </li>

                    <li id="charts-inline">
                        <a href="/orders/findall">
                            <i class="fa fa-circle-o"></i> 订单管理
                        </a>
                    </li>

                </ul>
            </li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
<!-- 导航侧栏 /-->