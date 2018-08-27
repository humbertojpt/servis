<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="footer" />
        <g:set var="entityName" value="${message(default: 'Nuevo Usuario')}" />
        <title><g:message args="[entityName]" /></title>
    </head>
    <body>

    <nav>
        <div class="nav-wrapper">
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a class="waves-effect waves-light btn" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list waves-effect waves-light btn" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
    </nav>


        <div id="create-usuarios" class="content scaffold-create" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.usuarios}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.usuarios}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>


        <!-- enviar y guardar en bd  -->
                <div class="row">
                    <g:form resource="${this.usuarios}" method="POST">
                        <fieldset class="form">
                            <h4><g:message code="default.create.label" args="[entityName]" /></h4>
                                <div class="col m5">

                                    <f:field bean="usuarios" property="cedula"/>
                                    <f:field bean="usuarios" property="nombre"/>
                                    <h4>Inicio de Sesión</h4>
                                    <f:field bean="usuarios" property="usuario"/>
                                    <f:field property="contraseña">
                                        <g:passwordField name="contraseña"/>
                                    </f:field>
                                </div>
                                <div class="col m5">
                                    <f:field bean="usuarios" property="cargo"/>
                                    <f:field bean="usuarios" property="correo"/>

                                    <f:field bean="usuarios" property="tipousuario"/>

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
