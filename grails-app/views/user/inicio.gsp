<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="layout" content="footini" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
</head>

<body>
<g:if test="${session?.user}">
</g:if>
<g:else>
      <div class='row'>
          <div class='col s12 center tituloInicio'>
              <h5 class="indigo-text">Please, login into your account</h5>
          </div>
      </div>
      <div class="row">
          <div class="z-depth-1 grey lighten-4 col s12 m4 offset-m4">
              <g:form controller="user" action="login">
                  <div class='row'>
                      <div class='input-field col s8 offset-s2'>
                          <g:textField name="username" />
                          <label for='username'>Enter your username</label>
                      </div>
                  </div>

                  <div class='row'>
                      <div class='input-field col s8 offset-s2'>
                          <g:passwordField name="password" />
                          <label for='password'>Enter your password</label>
                      </div>
                  </div>
                  <div class='row'>
                      <div class="col s12 center">
                          <g:submitButton class="button waves-effect waves-light btn btnini" name="submitButton" value="Login" />
                      </div>

                  </div>
              </g:form>


              <g:if test="${flash.message}">
                  <div class="message">${flash.message}</div>
              </g:if>
          </div>
      </div>

</g:else>
</body>
</html>