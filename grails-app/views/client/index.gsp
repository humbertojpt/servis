<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="footer" />
        <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="main">
            <a href="#list-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="javascript:history.back()"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>


            <div id="list-client" class="content scaffold-list" role="main">
                <h4><g:message code="default.list.label" args="[entityName]" /></h4>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                <f:table collection="${clientList}" properties="['clientid','clname','age','phone','mail']" />
            </div>
        </div>
    </body>
</html>