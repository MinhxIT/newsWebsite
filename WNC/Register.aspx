﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WNC.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            6
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-md-6">
                        <!-- Breaking News Widget -->
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="top-meta-data d-flex align-items-center justify-content-end">
                            <!-- Top Social Info -->
                            <!-- Top Search Area -->
                            <div class="top-search-area">
                                <form action="index.html" method="post">
                                    <input type="search" name="top-search" id="topSearch" placeholder="Search...">
                                    <button type="submit" class="btn"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div>
                            <!-- Login -->
                            <asp:HyperLink ID="hyperlink2"
                                NavigateUrl="loginForm.aspx"
                                Text="Admin"
                                runat="server"
                                class="login-btn">
                                    <i class="fa fa-user" aria-hidden="true">

                                    </i></asp:HyperLink>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="vizew-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">

                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="vizewNav">

                        <!-- Nav brand -->
                        <a href="index.html" class="nav-brand">
                            <img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.aspx">Trang chủ</a></li>
                                    <li>
                                        <a href="#">Danh mục</a>
                                        <ul class="dropdown">
                                            <asp:Repeater ID="rptCategory" runat="server">
                                                <ItemTemplate>
                                                    <li><a href="Category.aspx?category=<%#Eval("Id")%>">- <%#Eval("sCategoryName")%></a></li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </li>
                                    <li class="active">
                                        <asp:HyperLink ID="hyperlink3"
                                            NavigateUrl="loginForm.aspx"
                                            Text="Đăng nhập"
                                            runat="server" /></li>
                                    <li>
                                        <asp:HyperLink ID="hyperlink4"
                                            NavigateUrl="Contact.aspx"
                                            Text="Liên hệ"
                                            runat="server" /></li>
                                    <li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="vizew-breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Register</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Login Area Start ##### -->
    <div class="vizew-login-area section-padding-80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-6">
                    <div class="login-content">
                        <!-- Section Title -->
                        <div class="section-heading">
                            <h4>Register</h4>
                            <div class="line"></div>
                        </div>

                        <div class="form-group">
                            <asp:TextBox type="email" class="form-control" ID="username" placeholder="Email or User Name" runat="server"></asp:TextBox>
                            <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email or User Name">--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox type="password" class="form-control" ID="password" placeholder="Password" runat="server"></asp:TextBox>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox type="password" class="form-control" ID="repasword" placeholder="Re-type password" runat="server"></asp:TextBox>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox type="text" class="form-control" ID="name" placeholder="Enter Your Name" runat="server"></asp:TextBox>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox type="text" class="form-control" ID="Desc" placeholder="Describe yourself" runat="server"></asp:TextBox>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox type="text" class="form-control" ID="addr" placeholder="Address" runat="server"></asp:TextBox>
                            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <asp:Button ID="btnRegist" class="btn vizew-btn w-100 mt-30" runat="server" Text="Register" OnClick="btnRegist_Click" />
                        <%--<button type="submit" class="btn vizew-btn w-100 mt-30">Login</button>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Login Area End ##### -->
</asp:Content>
