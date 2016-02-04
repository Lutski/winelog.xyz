class WinesController < ApplicationController
  before_action :set_winelog
  before_action :set_wine, only: [:show, :destroy, :update, :edit]

  def create
    @wine = @winelog.wines.create(wine_params)

    redirect_to @winelog
  end

  def show
    @winelog = Winelogbook.find(params[:winelogbook_id])
  end

  def destroy
    @wine.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @wine.update(wine_params)
      redirect_to @winelog
    else
      render 'edit'
    end
  end

  private

  def set_winelog
    @winelog = Winelogbook.find(params[:winelogbook_id])
  end

  def wine_params
    params[:wine].permit(:title, :description, :vintage, :brand)
  end

  def set_wine
      @wine = Wine.find(params[:id])
  end

end
