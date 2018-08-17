class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create!(cocktail_params)
    redirect_to cocktails_path
  end

  def edit
  end

   def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path
  end


private
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end


end
