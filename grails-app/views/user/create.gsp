<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="footer" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <h4><g:message code="default.create.label" args="[entityName]" /></h4>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-user" class="content scaffold-create" role="main">
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


            <div class="row">
                <g:form resource="${this.user}" method="POST">
                    <fieldset class="form">

                        <div class="col s12 m4 offset-m2">

                            <f:field bean="user" property="identification"/>
                            <f:field bean="user" property="firstName"/>
                            <f:field bean="user" property="lastName"/>
                            <f:field bean="user" property="mail"/>
                            <f:field bean="user" property="position"/>
                            <f:field bean="user" property="company"/>

                        </div>
                        <div class="col s12 m4">
                            <h4>Inicio de Sesión</h4>
                            <f:field bean="user" property="username"/>
                            <f:field property="password">
                                <g:passwordField name="password"/>
                            </f:field>
                            <fieldset class="waves-effect waves-light btn">
                                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </fieldset>
                        </div>
                    </fieldset>
                </g:form>
            </div>
        </div>
    </body>
</html>
