angular.module('CircuitRoutes',[
  'templates',
  'ngRoute',
  'CircuitControllers',
])

.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'BoulderRoutesController'
      )
])

routes = [
  {
    id: 1
    setter: "Jonn"
    name: "Jonn's first route"
  },
  {
    id: 2
    setter: "Jonn"
    name: "Jonn's second route"
  },
  {
    id: 3
    setter: "Bill"
    name: "Bill's awesome route!"
  },
  {
    id: 4
    setter: "Jim"
    name: "Jim's route is the most fun"
  }
]
angular.module('CircuitControllers',[])
.controller("BoulderRoutesController", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.routes = routes.filter (route)-> route.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.routes = []
])