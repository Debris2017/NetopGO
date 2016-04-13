{{define "nav"}}
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            {{template "nav_li_profile"}}
            <li id="index">
               <a href="#"><i class="fa fa-dashboard"></i> <span class="nav-label">仪表盘</span><span class="label label-info pull-right"></span></a>
            </li>
            <li id="juser">
                <a href="#"><i class="fa fa-group"></i> <span class="nav-label">用户管理</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class="group"><a href="#">查看用户组</a></li>
                    <li class="user"><a href="#">查看用户<span class="label label-primary pull-right">2/2</span></a></li>
                </ul>
            </li>
            <li id="jasset">
                <a><i class="fa fa-inbox"></i> <span class="nav-label">资产管理</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class="group"><a href="#">查看资产组</a></li>
                    <li class="asset"> <a href="#">查看资产<span class="label label-info pull-right">3/3</span></a></li>
                    <li class="idc"> <a href="#">查看机房</a></li>
                </ul>
            </li>
            <li id="jperm">
                <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">授权管理</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class="sudo">
                        <a class="sudo" href="#">Sudo</a>
                    </li>
                    <li class="role">
                        <a href="#">系统用户</a>
                    </li>
                    <li class="rule">
                        <a href="#">授权规则</a>
                    </li>
                </ul>
            </li>
            <li id="jlog">
               <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">日志审计</span><span class="label label-info pull-right"></span></a>
            </li>
            <li id="file">
                <a href="#"><i class="fa fa-download"></i> <span class="nav-label">上传下载</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class="upload"><a href="#">文件上传</a></li>
                    <li class="download"><a href="#">文件下载</a></li>
                </ul>
            </li>
            <li id="setting">
                   <a href="#"><i class="fa fa-gears"></i> <span class="nav-label">设置</span><span class="label label-info pull-right"></span></a>
            </li>
            <li class="special_link">
                <a href="http://www.tingyun.com" target="_blank"><i class="fa fa-database"></i> <span class="nav-label">访问官网</span></a>
            </li>
        </ul>

    </div>
</nav>
{{end}}