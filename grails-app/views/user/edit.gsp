<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="footer" />
    </head>
    <body>
        <nav class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index">List User</g:link></li>
                <li><g:link class="create" action="create">New User</g:link></li>
            </ul>
        </nav>
        <div id="edit-user" class="content scaffold-edit" role="main">
            <h4>Edit User</h4>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form resource="${this.user}" method="PUT">
                <g:hiddenField name="version" value="${this.user?.version}" />
                <fieldset class="form">
                    <div class="col s12 m4 offset-m2">
                        <f:field bean="user" property="identification"/>
                        <f:field bean="user" property="firstName"/>
                        <f:field bean="user" property="lastName"/>
                        <h4>Inicio de Sesión</h4>
                        <f:field bean="user" property="username"/>
                        <f:field bean="user" property="passwordHashed"/>
                    </div>
                    <div class="col s12 m4">
                        <f:field bean="user" property="mail"/>
                        <f:field bean="user" property="position"/>
                        <f:field bean="user" property="company"/>
                        <fieldset class="waves-effect waves-light btn">
                            <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        </fieldset>
                    </div>
                </fieldset>
            </g:form>
        </div>

    </body>
</html>
