<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>

        <div id="create-client" class="content scaffold-create" role="main">
            <h4><g:message code="default.create.label" args="[entityName]" /></h4>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.client}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.client}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form resource="${this.client}" method="POST">
                <div class="row">
                    <fieldset class="form">
                        <div class="col s12 m4 offset-m2">
                            <f:field bean="client" property="clientid"/>
                            <f:field bean="client" property="clname"/>
                            <f:field bean="client" property="age"/>
                            <f:field bean="client" property="city"/>
                            <f:field bean="client" property="department"/>
                        </div>
                        <div class="col s12 m4">
                            <f:field bean="client" property="address"/>
                            <f:field bean="client" property="phone"/>
                            <f:field bean="client" property="mail"/>
                            <f:field bean="client" property="birthday"/>
                            <f:field bean="client" property="company"/>
                        </div>
                    </fieldset>
                </div>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
