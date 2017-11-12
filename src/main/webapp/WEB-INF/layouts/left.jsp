<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div id="leftbar" style="float: left; margin-left: 20px; width: 140px;" class="visible-desktop">
	
 
	<h1>个人页面</h1>
		<div class="submenu">
		<a id="myTask" href="${ctx}/memberDrawManage/drawList">会员抽奖管理</a> 
		<a id="myTask" href="${ctx}/memberDrawManage/prizeSettingManage">奖品设置管理</a>
 
	</div>
	 
	 <h1>系统管理</h1> 
		 
	<div class="submenu">
		  
		<shiro:hasAnyRoles name="admin,Head">
			<a id="account-tab" href="${ctx}/admin/user">会员帐号管理</a> 
		</shiro:hasAnyRoles>
		 
		<a id="account-tab" href="${ctx}/profile">个人资料修改</a>
		 
	</div>
 

</div>