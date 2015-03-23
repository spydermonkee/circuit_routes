angular.module('CircuitRoutes',[
  'templates',
  'ngRoute',
  'ngResource',
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

boulderRoutes = [
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
.controller("BoulderRoutesController", [ '$scope', '$routeParams', '$location', '$resource'
  ($scope, $routeParams, $location, $resource) ->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.boulderRoutes = boulderRoutes.filter (route)-> route.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.boulderRoutes = []
])
.controller("BoulderRouteController", ['$scope', '$routeParams', '$resource',
  ($scope, $routeParams, $resource) ->
    BoulderRoute = $resource('/boulderRoutes/boulderRouteId', { boulderRouteId: "@id", format: 'json'})
  ])