app.directive('paralaxInfo', function() { 
  return { 
    restrict: 'E', 
    scope: { 
      info: '=' 
    }, 
    templateUrl: 'js/directives/paralaxInfo.html' 
  }; 
});