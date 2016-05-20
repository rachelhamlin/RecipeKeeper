class Api::RecipesController < ApplicationController

  def index
    render json: { recipes: Recipe.all }
  end

  def create
    new_recipe = Recipe.create recipe_params
    render json: { recipe: new_recipe }
  end

  def show
    recipe = Recipe.find params[:id]
    render json: { recipe: recipe }
  end

  def destroy
    recipe = Recipe.find params[:id]
    recipe.destroy
    render json: { recipes: Recipe.all }
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :url)
  end

end
