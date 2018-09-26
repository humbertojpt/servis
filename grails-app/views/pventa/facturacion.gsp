<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="footersmall" />
    <title>Punto de venta</title>
</head>
<body>
    <nav>
        <div class="nav-wrapper">
            <a href="#!" class="brand-logo"><i class="material-icons">cloud</i>Logo</a>
            <ul class="right hide-on-med-and-down">
                <li class="tab"><a href="#test4">t1</a></li>
                <li><a href="#test4"><i class="large material-icons">close</i></a></li>
                <li><a href="collapsible.html"><i class="large material-icons">refresh</i></a></li>
                <li><a href="mobile.html"><i class="large material-icons">more_vert</i></a></li>
            </ul>
        </div>
    </nav>


<div class="row">
    <div class="col m10 offset-m1">
        <ul class="tabs">
            <li class="tab col s6 m1"><a class="active" href="#principal">Principal</a></li>
            <li class="tab col s6 m1"><a href="#test1">Mesas</a></li>
            <li class="tab col s6 m1"><a href="#test2">Cliente</a></li>
            <li class="tab col s6 m1"><a href="#test3">Empleado</a></li>
            <li class="tab col s4 m1"><a href="#test4">Productos</a></li>
            <li class="tab col s4 m1"><a href="#test5">Terminar</a></li>
            <li class="tab col s4 m1"><a href="#test7">Corregir</a></li>
        </ul>
    </div>
    <div id="principal" class="col m10 offset-m1">
        <div class="row">
            <div class="col s12 m5">
                <div class="card darken-1">
                    <div class="card-content">
                            <ul class="collapsible collapsible-accordion">
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">attach_file</i>Orden</div>
                                    <div class="collapsible-body">
                                        <div class="row">
                                        <div class="col s12 m6">
                                            <p> Numero de Orden:${norden}</p>
                                        </div>
                                        <div class="col s12 m4">
                                            <p>Fecha</p>
                                        </div>
                                    </div>
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <p>MESA: ${nmesa}</p>
                                            </div>
                                            <div class="col s12 m6">
                                                <p> N. Tiquete: ${ntiquete}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col s12">
                                                <p> Empleado: ${empleado}</p>
                                            </div>
                                        </div></div>
                                </li>
                                <li>
                                    <div class="collapsible-header active"><i class="material-icons">assignment</i>Producto</div>
                                    <div class="collapsible-body">
                                        <div class="card darken-1">
                                            <div class="card-content">
                                                <div class="row">
                                                    <div class="col s12">
                                                        <p>Referencia: ${referencia}</p>
                                                        <p>Precio venta: ${pventa}</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col s12 m6">
                                                        <p> Cantidad: ${pcantidad}</p>
                                                    </div>
                                                    <div class="col s12 m6">
                                                        <p> Existencia: ${pexistencia}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">info_outline</i>Cliente</div>
                                    <div class="collapsible-body">
                                        <div class="card-content">


                                                <div class="row">
                                                    <div class="col s12">
                                                       <div class='input-field'>
                                                            <g:field type="text" name="cnombre"/>
                                                            <label for='cnombre'>Nombre</label>
                                                       </div>
                                                       <div class='input-field'>
                                                           <g:field type="text" name="ccorreo"/>
                                                           <label for='ccorreo'>Correo</label>
                                                       </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                        <div class='input-field col s12 m6'>
                                                            <g:field type="text" name="ccedula"/>
                                                            <label for='ccedula'>Cedula</label>
                                                        </div>
                                                        <div class='input-field col s12 m6'>
                                                            <g:field type="text" name="ctele"/>
                                                            <label for='ctele'>Telefono</label>
                                                        </div>
                                                </div>
                                                <div class="card-action">
                                                    <g:submitButton class="btn" name="submit" value="Adicionar" onclick="return confirm('Are you sure?')" />
                                                </div>


                                        </div>
                                    </div>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>
            <div class="col s12 m7">
                <div class="card darken-1">
                    <div class="card-content">
                        <span class="card-title">Orden total</span>
                        <f:table collection="${clientList}" properties="['clientid','clname','age','phone','mail']" />
                    </div>
                    <div class="card-action">
                        <a href="#">This is a link</a>
                        <a href="#">This is a link</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="test1" class="col s12">Test 1</div>
    <div id="test2" class="col s12">Test 2</div>
    <div id="test3" class="col s12">Test 3</div>
    <div id="test4" class="col s12">Test 4</div>
</div>

</body>
</html>