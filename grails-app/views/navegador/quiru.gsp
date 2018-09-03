<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="footer" />
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title>QUIRULASER</title>
</head>
<body>
    <div class="navbar-fixed main">
        <nav role="navigation">
            <div class="nav-wrapper container">
                <ul id="navquiru" class="right hide-on-med-and-down">
                    <g:if test="${session?.user}">
                    <li><a href="#">Citas</a></li>
                    <li><a href="/client">Clientes</a></li>
                    <li><a href="${createLink(uri: '#')}">Laser</a></li>
                    <li><a href="#">Dermo</a></li>
                    <li><a href="${createLink(uri: '#')}">Botox</a></li>
                    <li><a href="#">BotoxN</a></li>
                    <li><a href="${createLink(uri: '#')}">Estadisticas</a></li>
                    <li id="user-name">${session?.user?.firstName} ${session?.user?.lastName} |</li>
                    <li><g:link controller="user" action="logout">Logout</g:link></li>
                    </g:if>
                    <g:else>
                        <li><a href="${createLink(uri: '/inicio')}">{{inicio}}</a></li>
                    </g:else>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="#">Citas</a></li>
                    <li><a href="#">Clientes</a></li>
                    <li><a href="${createLink(uri: '#')}">Laser</a></li>
                    <li><a href="#contact">Dermo</a></li>
                    <li><a href="${createLink(uri: '#')}">Botox</a></li>
                    <li><a href="#contact">BotoxN</a></li>
                    <li><a href="${createLink(uri: '#')}">Estadisticas</a></li>
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

        <div class="center imagecompany" >
            <asset:image src="quiru.jpg"/>
        </div>
</body>
</html>