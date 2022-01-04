<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fn_contains_and_containsIgnoreCase_function
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/4
  Time(创建时间)： 21:12
  Description(描述)：
   JSTL fn:contains() 函数用于判断一个字符串是否包含指定的字符串，区分大小写。
   fn:containsIgnoreCase() 函数与 fn:contains() 函数作用相同，fn:containsIgnoreCase() 函数不区分大写。
JSP fn:contains() 函数语法如下：
boolean fn:contains(String sourceStr, String testStr)
其中，sourceStr 表示源字符串，testStr 为指定字符串。

fn:containsIgnoreCase() 函数的语法如下：
boolean fn:containsIgnoreCase(String sourceStr, String testStr)
其中，sourceStr 表示源字符串，testStr 为指定字符串。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="sourceStr" value="abcDEF123"/>
<c:out value="${fn:contains(sourceStr, '123')}" escapeXml="true" default=""/>
<br/>
<c:out value="${fn:contains(sourceStr, 'abc')}" escapeXml="true" default=""/>
<br/>
<c:out value="${fn:contains(sourceStr, 'ABC')}" escapeXml="true" default=""/>
<br/>
<c:out value="${fn:contains(sourceStr, 'abcd')}" escapeXml="true" default=""/>
<br/>
<br/>
<c:out value="${fn:containsIgnoreCase(sourceStr, 'abc')}" escapeXml="true" default=""/>
<br/>
<c:out value="${fn:containsIgnoreCase(sourceStr, 'ABC')}" escapeXml="true" default=""/>
<br/>
<c:out value="${fn:containsIgnoreCase(sourceStr, 'ABCD')}" escapeXml="true" default=""/>
<br/>
<c:out value="${fn:containsIgnoreCase(sourceStr, 'ABCDEF')}" escapeXml="true" default=""/>
<br/>
<c:out value="${fn:containsIgnoreCase(sourceStr, 'abcdf')}" escapeXml="true" default=""/>
<br/>
</body>
</html>
