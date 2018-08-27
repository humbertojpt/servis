<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="footer" />
    <title>BARBER</title>
</head>
<body>
    <div class="navbar-fixed main">
        <nav role="navigation">
            <div class="nav-wrapper container">
                <ul id="navquiru" class="right hide-on-med-and-down">
                    <li><a href="#">Citas</a></li>
                    <li><a href="#">Clientes</a></li>
                    <li><a href="${createLink(uri: '#')}">Estadisticas</a></li>
                    <g:if test="${session?.user}">
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
        <asset:image src="Contabilidad.jpg"/>
    </div>
</body>
</html>