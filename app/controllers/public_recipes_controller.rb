class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.includes(:user).public_recipe
  end
end
