<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="main" />
</head>
<body>

<div id="index-banner" class="parallax-container">
    <div class="parallax"><asset:image src="fondo1.png"/></div>
</div>

<div class=" container software">
    <div class="row">
        <div class="col s11 m10 l12">
            <p class="light center"> <b>ADMI V 8.0</b> <br>  Software  Administrativo, que permite el manejo y registro de la información  Contable y Financiera de empresas pequeñas y medianas ya sea de manera integrada o en forma modular. El registro de la información o documentos en Contabilidad se realiza de manera automática,  ya que es un software parametrizable de fácil manejo que genera la información oportuna para la toma de decisiones gerenciales. Facilidad para el cambio y adaptación dependiendo del tipo de empresa y requerimientos del cliente.</p>
        </div>
    </div>
</div>

<div class="section scrollspy" id="clientes">
    <div class="container">
        <div class="row">
            <h4 class="header text_b center">{{ clientes }} </h4>
            <div class="col s12 m4 l4" ng-repeat="empresa in empresas">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                       <asset:image class="activator" src="{{empresa.cover}}"/>
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">{{empresa.name}} <i class="mdi-navigation-more-vert right"></i></span>
                        <p class="activator waves-effect waves-block waves-light ">Entrar</p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">{{empresa.name}} <i class="mdi-navigation-close right"></i></span>
                        <p>{{empresa.e1}} <br>{{empresa.e2}} <br>{{empresa.e3}} <br>{{empresa.e4}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--   Productos   -->

<div class="parallax-container center valign-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 header light">
                <h2 class="teal-text teal-text lighten-2">{{subtitulo}}</h2>
                <a class="waves-effect waves-light btn-large teal lighten-2" href="${createLink(uri: '/inicio')}">Empecemos</a>
            </div>
        </div>
    </div>
    <div class="parallax">
        <asset:image src="soft.jpg"/>
    </div>
</div>

<div class="section scrollspy" id="productos">
    <div class="container">
        <h4 class="header text_b center">{{productos}} </h4>
        <div class="row">
            <div class="col s12 m4 l4" ng-repeat="product in products">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image class="activator" src="{{product.cover}}"/>
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">{{product.name}} <i class="mdi-navigation-more-vert right"></i></span>
                        <p class="activator waves-effect waves-block waves-light ">Entrar</p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">{{product.subname}} <i class="mdi-navigation-close right"></i></span>
                        <p class="light">{{product.e1}}<br>{{product.e2}}<br>{{product.e3}}<br>{{product.e4}}<br>{{product.e5}}<br>{{product.e6}}<br>{{product.e7}}<br>{{product.e8}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="contact" class="container">
    <div class="section">
        <div class="row">
            <div class="col s12 m6 l6">
                <h4>{{contacto}}</h4>
                <form class="col s12" action="contact.php" method="post">
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="mdi-action-account-circle prefix black-text"></i>
                            <input id="icon_prefix" name="subject" type="text" class="validate black-text">
                            <label for="icon_prefix" class="gray-text">First Name</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="mdi-communication-email prefix black-text"></i>
                            <input id="icon_email" name="email" type="email" class="validate lack-text">
                            <label for="icon_email" class="gray-text">Email</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="mdi-editor-mode-edit prefix black-text"></i>
                            <textarea id="icon_prefix2" name="comment" class="materialize-textarea black-text"></textarea>
                            <label for="icon_prefix2" class="gray-text">Message</label>
                        </div>
                        <div class="col offset-s7 s5">
                            <button class="btn waves-effect waves-light red darken-1" >Enviar <i class="mdi-content-send right white-text"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col s12 m6 l6">
                <div id="googleMap" style="width:400px;height:400px;"></div>
            </div>
        </div>

    </div>

</div>
</body>

</html>