<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>




<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="名榜,wangid">
    <title>家具销售系统</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/children.css">

    <!-- 在线图标库 地址：http://fontawesome.dashgame.com/-->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- layui css -->
    <link rel="stylesheet" href="layui/css/layui.css">
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
   <style>
     
 .layui-form-pane .layui-form-checkbox {
    margin: 12px 0 4px 10px!important;
}
    </style>  
</head>
<script charset="utf-8" src="/shengxiandianshang/kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="/shengxiandianshang/kindeditor/lang/zh-CN.js"></script>
<script>
	        KindEditor.ready(function(K) {
	                window.editor = K.create('#editor_id');
	        });
	</script>
	<script>

KindEditor.ready(function(K) {

K.create('textarea[name="note"]', {

uploadJson : '/shengxiandianshang/kindeditor/jsp/upload_json.jsp',

                fileManagerJson : '/shengxiandianshang/kindeditor/jsp/file_manager_json.jsp',

                allowFileManager : true,

                allowImageUpload : true, 

autoHeightMode : true,

afterCreate : function() {this.loadPlugin('autoheight');},

afterBlur : function(){ this.sync(); }  //Kindeditor下获取文本框信息

});

});

</script>
<body>
    <div class="wangid_conbox">
        <!-- 当前位置 -->
        <div class="zy_weizhi bord_b">
            <i class="fa fa-home fa-3x"></i>
            <a>首页</a>
            <a>新闻管理</a>
            <span>新闻添加</span>
        </div>
        <!-- 内容 -->    
        <div class="kehubh_tj_k">
            <form class="layui-form layui-form-pane" action="addNews.do" method="post" enctype="multipart/form-data" > 
            <ul> 
                <li>
                    <div class="left">新闻名：</div>
                    <div class="right"> 
                        <input type="text" name="name" required="required" placeholder="请输入新闻名" autocomplete="off" class="layui-input">
                    </div>
                </li>
                <li>
                    <div class="left">图片：</div>
                    <div class="right">
                            <input style="margin-top: 8px;" type="file" name="file" required="required">
                    </div>
                </li>
                 <li>
                    <div class="left">内容：</div>
                    <div class="right"> 
                     	<textarea name="note" id="editor_id" style="width:100%;height:400px;"  class="layui-textarea"></textarea>
                    </div>
                </li>
                <li>
                    <div class="left"> &nbsp;</div>
                    <div class="right"> 
                        <button class="button_qr" type="submit">确定添加</button>
                    </div>
                </li>
            </ul> 
            </form>
        </div>
    </div>   
   
	<!-- houl --> 
	<!-- 结束 -->
    <!-- layui js -->
    <script src="layui/layui.js"></script>
    
</body>
<script>
        layui.use(['form', 'layedit', 'laydate'], function(){
          var form = layui.form
          ,layer = layui.layer
          ,layedit = layui.layedit
          ,laydate = layui.laydate;
        });
        </script>
</html>

