<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>教学大纲</title>
    <meta content="text/html; charset = utf-8" http-equiv="Content-Type">
    <style type="text/css">
        body {
            background : url(img/outline_bg.jpg);   <!--修改背景图片，css中修改教学大纲部分的背景-->
        background-repeat : no-repeat;
        background-attachment: fixed;
        margin-left: 10px;
        margin-top: 10px;
        margin-right: 10px;
        margin-bottom: 10px;
        }
        .SubTitleBold{
            color:#0000FF;
            font-weight:bold;
            font-size:10.5pt;
        }
        .HyperLinkThis{
            font-size:10.5pt;
        }
    </style>
    <link href="style.css" type="text/css" rel="stylesheet">
    <style type="text/css">
    </style>
</head>




<body>

<c:url value="/ListBasicServlet"  var="a1">
    <c:param name="path" value="1"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a2">
    <c:param name="path" value="2"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a3">
    <c:param name="path" value="3"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a4">
    <c:param name="path" value="4"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a5">
    <c:param name="path" value="5"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a6">
    <c:param name="path" value="6"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a7">
    <c:param name="path" value="7"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a8">
    <c:param name="path" value="8"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a9">
    <c:param name="path" value="9"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a10">
    <c:param name="path" value="10"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a11">
    <c:param name="path" value="11"></c:param>
</c:url>
<c:url value="/ListBasicServlet"  var="a12">
    <c:param name="path" value="12"></c:param>
</c:url>


<a name="resource_outline"></a>
<p class="heading">基础知识</p>
<p class="subHeading">课堂讲授的主要的知识点： </p>

<table width="80%" border="1" align="center">
    <tbody><tr>
        <td width="13%"><div align="center">第一章</div></td>
        <td width="24%"><div align="center">绪论</div></td>
        <td width="48%"><div align="left" style="margin:5px;">1.1知识<br>1.2 知识发现<br>1.3 知识发现的任务<br>1.4 知识发现的方法</div></td>
        <td width="15%"><div align="center">
            <a href="${a1}" target="_blank" >作业下载</a>
        </div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第二章</div></td>
        <td width="24%"><div align="center" style="margin:5px;">决策树</div></td>
        <td width="48%"><div align="left" style="margin:5px;">2.1 决策树学习<br>
            2.2 CLS学习算法<br>
            2.3 ID3学习算法<br>
            2.4 决策树的改进算法<br>
            2.5 决策树的评价<br>
            2.6 简化决策树<br>
            2.7 连续性属性离散化 </div></td>
        <td width="15%"><div align="center"><a href="${a2}"  target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第三章</div></td>
        <td width="24%"><div align="center">关联规则</div></td>
        <td width="48%"><div align="left" style="margin:5px;">3.1 关联规则挖掘概述<br>
            3.2 广义模糊关联规则的挖掘<br>
            3.3 挖掘关联规则的数组方法<br>
            3.4 任意多表间关联规则的并行挖掘</div></td>
        <td width="15%"><div align="center"><a href="${a3}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第四章</div></td>
        <td width="24%"><div align="center">基于范例的推理</div></td>
        <td width="48%"><div align="left" style="margin:5px;">4.1 概述<br>
            4.2 过程模型<br>
            4.3 范例的表示<br>
            4.4 范例的索引</div></td>
        <td width="15%"><div align="center"><a href="${a4}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第五章</div></td>
        <td width="24%"><div align="center">模糊聚类</div></td>
        <td width="48%"><div align="left" style="margin:5px;">5.1 传递闭包法<br>
            5.2 DCMBP聚类法<br>
            5.3 系统聚类法<br>
            5.4 C-均值聚类法<br>
            5.5 聚类有效性</div></td>
        <td width="15%"><div align="center"><a href="${a5}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第六章</div></td>
        <td width="24%"><div align="center">粗糙集</div></td>
        <td width="48%"><div align="left" style="margin:5px;">6.1 决策逻辑<br>
            6.2 决策表的约简<br>
            6.3 粗糙集的扩展模型<br>
            6.4 粗糙集的试验系统</div></td>
        <td width="15%"><div align="center"><a href="${a6}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第七章</div></td>
        <td width="24%"><div align="center">贝叶斯网络</div></td>
        <td width="48%"><div align="left" style="margin:5px;">7.1 贝叶斯概率基础<br>
            7.2 贝叶斯学习理论<br>
            7.3 简单贝叶斯学习模型<br>
            7.4 贝叶斯网络的构建</div></td>
        <td width="15%"><div align="center"><a href="${a7}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第八章</div></td>
        <td width="24%"><div align="center">支持向量机</div></td>
        <td width="48%"><div align="left" style="margin:5px;">8.1 统计学习问题<br>
            8.2 学习过程的一致性<br>
            8.3 支持向量机<br>
            8.4 核函数</div></td>
        <td width="15%"><div align="center"><a href="${a8}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第九章</div></td>
        <td width="24%"><div align="center">隐马尔科夫模型</div></td>
        <td width="48%"><div align="left" style="margin:5px;">9.1 马尔科夫过程<br>
            9.2 隐马尔科夫模型<br>
            9.3 似然概率和前反向算法<br>
            9.4 学习算法</div></td>
        <td width="15%"><div align="center"><a href="${a9}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">
            <p>第十章</p>
        </div></td>
        <td width="24%"><div align="center">神经网络</div></td>
        <td width="48%"><div align="left" style="margin:5px;">10.1 人工神经元及感知机模型<br>
            10.2 前向神经网络<br>
            10.3 径向基函数神经网络<br>
            10.4 反馈神经网络</div></td>
        <td width="15%"><div align="center"><a href="${a10}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">
            <p>第十一章        </p>
        </div></td>
        <td width="24%"><div align="center"> 进化和遗传算法</div></td>
        <td width="48%"><div align="left" style="margin:5px;">11.1 基本遗传算法<br>
            11.2 遗传算法的数学理论<br>
            11.3 遗传算法的基本实现技术<br>
            11.4 遗传算法的高级实现技术<br>
            11.5 并行遗传算法<br>
            11.6 遗传算法应用</div></td>
        <td width="15%"><div align="center"><a href="${a11}" target="_blank" >作业下载</a></div></td>
    </tr>
    <tr>
        <td width="13%"><div align="center">第十二章</div></td>
        <td width="24%"><div align="center" style="margin:5px;">数据挖掘前沿讲座</div></td>
        <td width="48%"><div align="left" style="margin:5px;">&nbsp;</div></td>
        <td width="15%"><div align="center">
            <a href="${a12}" target="_blank" >作业下载</a>
        </div></td>
    </tr>

    </tbody></table>

</body>
</html>