﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="S3PWebUI._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="/" />
    <link rel="stylesheet" href="/public/semantic.css" />
    <link rel="stylesheet" href="/public/css/style.css" />
    <script type="text/javascript" src="/public/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="/public/semantic.min.js"></script>
    <script type="text/javascript" src="/public/echarts.min.js"></script>
    <script type="text/javascript" src="/public/macarons.js"></script>
    <script type="text/javascript" src="/public/echarts-wordcloud.min.js"></script>
</head>

<body ng-app="app">

    <div>
        <!--********-->
        <!--Top Menu-->
        <!--********-->
        <div class="ui top menu">
            <div class="ui container">
                <div class="ui header item">
                    <!--<img class="logo" src="assets/images/logo.png">-->
                    S3P
                    <div class="text tiny" style="margin-left:10px;">
                        This is a cool project ...
                    </div>
                </div>
                <div class="menu right">
                    <a href="/" class="item active">Who am I</a>
                    <a href="/social" class="item">Social Community</a>
                    <a href="#" class="item">StackExchange</a>
                    <a href="#" class="item">MSDN/TN Fourms</a>

                    <div class="right item ui label simple dropdown">
                        <img class="ui mini circular image avator right spaced" src="public/images/patrick.png">
                        <div class="content">
                            <div class="ui sub header">Fawad</div>
                        </div>
                        <i class="dropdown icon"></i>
                        <div class="menu">
                            <a class="item">Profile</a>
                            <a class="item">Subscription</a>
                            <a class="item">Sign out</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--top menu end-->
        <div id="main">
            <div ng-view></div>
            <!--contain body-->
        </div>
    </div>
    <script type="text/javascript" src="/public/main.min.js"></script>
</body>
</html>