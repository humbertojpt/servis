app.controller('MainController', ['$scope', function($scope) { 
  $scope.titulo = 'Servisistemas y Soluciones'; 
  $scope.subtitulo = 'Software, asesorías y productos en el área de Sistemas',
  $scope.clientes = 'Clientes'; 
  $scope.productos = 'Productos'; 
  $scope.empresa = 'Empresa'; 
  $scope.contacto = 'Contacto';
  $scope.inicio =  'INICIO SESION';
  $scope.empresas = [ 
  { 
    name: 'Empresas de Servicio', 
    cover: 'serv3.jpg',
    e1:'Asesoria Hoteles​',
    e2:'Restaurantes​​',
    e3:'Salones de Belleza',
    e4:'Talleres',
    likes:0
  }, 
  { 
    name: 'Empresas Comerciales',  
    cover: 'comer2.jpg',
    e1:'Almacenes de repuestos​',
    e2:'Ferreterías',
    e3:'Muebles',
    likes:0
  },
  { 
    name: 'Empresas Industriales',  
    cover: 'indu1.jpg' ,
    e1:'Muebles',
    e2:'Plasticos',
    e3:'Perfiles',
    likes:0
  },
];
$scope.products = [ 
  { 
    name: 'Software', 
    subname:'Construccion de Software', 
    cover: 'soft2.png',
    e1:'Asesorias Contables',
    e2:'Punto de Venta',
    e3:'Contabilidad',
    e4:'Facturación',
    e5:'Compras',
    e6:'Inventario',
    e7:'Producción',
    e8:'Servicio Web'
  }, 
  { 
    name: 'Asesorias',
    subname:'Asesorias en Sistemas Informaticos',  
    cover: 'aseso1.jpg',
    e1:'Consultorias en sistemas de información',
    e2:'Alquiler de Punto de venta de computador',
    e3:'Mantenimiento de Computadores'
  },
  { 
    name: 'Hardware',
    subname:'Empresas Industriales',  
    cover: 'hard2.jpg' ,
    e1:'Computadores',
    e2:'Impresoras',
    e3:'Monitores',
    e4:'Portatiles',
    e5:'Accesorios',
    e6:'UPS, Reguladores'
  },
];
 $scope.plusOne = function(index) { 
  $scope.products[index].likes += 1; 
};
 $scope.minusOne = function(index) { 
  $scope.products[index].dislikes -= 1; 
};
  
}]);