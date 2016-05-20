<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul side-navigation class="nav metismenu" id="side-menu">
            <li class="nav-header">
            
            	<div class="profile-element" uib-dropdown>
                    <img alt="image" class="img-circle" src="${contextPath}/resources/img/profile_small.jpg"/>
                    <a uib-dropdown-toggle href>
                            <span class="clear">
                                <span class="block m-t-xs">
                                    <strong class="font-bold">${user.fullname }</strong>
                             </span>
                                <span class="text-muted text-xs block">Senior Developer <b class="caret"></b></span>
                            </span>
                    </a>
                    <ul uib-dropdown-menu class="animated fadeInRight m-t-xs">
                        <li><a href="">Profile</a></li>
                        <li class="divider"></li>
                        <li><a ui-sref="login">Logout</a></li>
                    </ul>
                </div>
            </li>

            <li ui-sref-active="active">
                <a ui-sref="index.dashboard"><i class="fa fa-laptop"></i> <span class="nav-label">Dashboard</span> </a>
            </li>
            <li ui-sref-active="active">
                <a ui-sref="index.projects"><i class="fa fa-desktop"></i> <span class="nav-label">Projects</span></a>
            </li>
        </ul>

    </div>
</nav>