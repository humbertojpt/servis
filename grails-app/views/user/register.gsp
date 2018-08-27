<!DOCTYPE html>
<html lang="en">
    <<head>
            <meta name="layout" content="main" />
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    </head>
<body>
<g:form class="simpleform" controller="user" action="register">
    <fieldset>
        <h4>Registration</h4>

        <g:hasErrors bean="${user}">
            <div class="errors">
                <g:renderErrors bean="${user}"/>
            </div>
        </g:hasErrors>
        <div class="row">
            <div class="col s11 m5">
                <p>
                    <label for="firstName">First Name</label>
                    <g:textField name="firstName" value="${user?.firstName}"
                                 class="${hasErrors(bean:user,field:'firstName','errors')}" />
                </p>
                <p>
                    <label for="lastName">Last Name</label>
                    <g:textField name="lastName" value="${user?.lastName}"
                                 class="${hasErrors(bean:user,field:'lastName','errors')}" />
                </p>
                <p>
                    <label for="lastName">Mail</label>
                    <g:textField name="mail" value="${user?.mail}"
                                 class="${hasErrors(bean:user,field:'mail','errors')}" />
                </p>
                <p>
                    <label for="lastName">Position</label>
                    <g:textField name="position" value="${user?.position}" />
                </p>
            </div>
            <div class="col s11 m5">
                <p>
                    <label for="identification">Identification</label>
                    <g:textField name="identification" value="${user?.identification}"
                                 class="${hasErrors(bean:user,field:'identification','errors')}"/>
                </p>
                <p>
                    <label for="username">Username</label>
                    <g:textField name="username" value="${user?.username}"
                                 class="${hasErrors(bean:user,field:'username','errors')}"/>
                </p>
                <p>
                    <label for="password">Password</label>
                    <g:passwordField name="password"
                                     class="${hasErrors(bean:user,field:'password','errors')}" />
                </p>
                <p>
                    <label for="confirm">Confirm Password</label>
                    <g:passwordField name="confirm"
                                     class="${hasErrors(bean:user,field:'password','errors')}" />
                </p>
                <fieldset >
                    <g:submitButton class="waves-effect waves-light btn" name="submitButton" value="Create Account" />
                </fieldset>

            </div>
        </div>
    </fieldset>
</g:form>
</body>
</html>