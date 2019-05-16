class CocktailsController < ApplicationController
before_action :set_restaurant, only: [:show]

  def index
    @cocktails = Cocktail.all

  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(strong_cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

private

  def set_restaurant
     @cocktail = Cocktail.find(params[:id])
  end

  def strong_cocktail_params
    params.require(:cocktail).permit(:name)
  end

end

