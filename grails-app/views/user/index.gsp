<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="footer" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <nav>
        <div class="nav-wrapper">
            <ul id="nav">
                <li><a class="waves-effect waves-light btn" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="waves-effect waves-light btn" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <g:if test="${session?.user}">
                    <li id="user-name">${session?.user?.firstName} ${session?.user?.lastName} |</li>
                    <li><g:link controller="user" action="logout">Logout</g:link></li>

                </g:if>
            </ul>
        </div>
    </nav>

    <section class="row">
        <div class="col-md-7">

            <div id="list-user" class="content scaffold-list" role="main">
                <h4><g:message code="default.list.label" args="[entityName]" /></h4>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table collection="${userList}" />
            </div>
        </div>
    </section>

    </body>
</html>