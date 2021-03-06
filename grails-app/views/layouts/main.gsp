<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <title>
        <g:layoutTitle default="Servisistemas"/>
    </title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body ng-app="myApp">
<div  ng-controller="MainController">
    <div class="indexnavbar-fixed main">
        <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="/#" class="brand-logo">{{ titulo }}</a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="#clientes">{{clientes}}</a></li>
                    <li><a href="#productos">{{productos}}</a></li>
                    <li><a href="${createLink(uri: '/empresa')}">{{empresa}}</a></li>
                    <li><a href="#contact">{{contacto}}</a></li>
                    <g:if test="${session?.user}">
                        <li id="user-name">${session?.user?.firstName} ${session?.user?.lastName} |</li>
                        <li><g:link controller="user" action="logout">Logout</g:link></li>
                    </g:if>
                    <g:else>
                        <li><a href="${createLink(uri: '/inicio')}">{{inicio}}</a></li>
                    </g:else>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="#clientes">{{clientes}}</a></li>
                    <li><a href="#productos">{{productos}}</a></li>
                    <li><a href="${createLink(uri: '/empresa')}">{{empresa}}</a></li>
                    <li><a href="#contact">{{contacto}}</a></li>
                    <g:if test="${session?.user}">
                        <li id="user-name">${session?.user?.firstName} ${session?.user?.lastName} |</li>
                        <li><g:link controller="user" action="logout">Logout</g:link></li>
                    </g:if>
                    <g:else>
                        <li><a href="${createLink(uri: '/inicio')}">{{inicio}}</a></li>
                    </g:else>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
    </div>

    <g:layoutBody/>

    <footer class="page-footer teal">
        <div class="container hide-on-small-only">
            <div class="row">
                <div class="col l4 m4 s12">
                    <i class="small material-icons">navigation</i>
                    <p class="grey-text text-lighten-4">Cra 54 # 84-80 <br>3205427171</p>


                </div>
                <div class="col l4 m4 s12">
                    <i class="small material-icons">mode_edit</i>
                    <p class="grey-text text-lighten-4">hpena45@hotmail.com <br>humjopetor@gmail.com</p>
                </div>
                <div class="col l4 m4 s12">
                    <i class= "small material-icons">lock_outline</i>
                    <p class="grey-text text-lighten-4">Copyright © 2018 Servisistemas y Soluciones. All rights reserved.</p>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                Made by humbertojpt@gmail.com
            </div>
        </div>
    </footer>
</div>


<asset:javascript src="application.js"/>

</body>
</html>
