// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var recipeApp = angular.module("RecipeApp",[]);

recipeApp.controller('RecipesController',['$scope','$http',function($scope,$http){

  $scope.getRecipes = function(){
    $http.get('/api/recipes').then(function(response){
      $scope.recipes = response.data.recipes;
      console.log('loaded recipes');
    })
  }

  $scope.getRecipes();

  $scope.createRecipe = function(recipe){
    var newRecipe = {
      recipe: {
        name: recipe.name,
        url: recipe.url
      }
    }

    $http.post('/api/recipes', newRecipe).success(function(newRecipe){
      console.log('Created a new recipe!')
    }).then(function(){
      $scope.getRecipes();
    })

    // favesAPI.save(newRecipe).then(function(response){
    //   $scope.recipes.push(response.data);
    // })
    //
    // $http.post('/api/recipes', newRecipe).then(function(response){
    //   $scope.recipes.push(response.recipe);
    // })

  }

  $scope.removeRecipe = function(recipe) {
    var recipeID = recipe.id;
    $http.delete('/api/recipes/' + recipeID).success(function(recipeID, status, headers){
      console.log('deleted recipe')
    }).then(function(){
      $scope.getRecipes();
    })
  }

}])
