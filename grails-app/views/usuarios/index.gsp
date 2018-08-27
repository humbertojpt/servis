<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuarios.label', default: 'Usuarios')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-usuarios" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>


        <div class="row">
            <div id="list-usuarios" class="content scaffold-list col l6" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table collection="${usuariosList}" />

                <div class="pagination">
                    <g:paginate total="${usuariosCount ?: 0}" />
                </div>
            </div>
        </div>

    <g:form action="muestra">
        Cedula: <g:field type="text" name="cedula"/><br>
        <g:submitButton name="submit" value="Enviar datos"/>
    </g:form>

    </body>
</html>