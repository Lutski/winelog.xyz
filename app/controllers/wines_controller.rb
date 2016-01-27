class WinesController < ApplicationController
  before_action :set_winelog

  def create
    @wine = @winelog.wines.create(wine_params)

    redirect_to @winelog
  end

  def show
    @wine = Wine.find(params[:id])
    @winelog = Winelogbook.find(params[:winelogbook_id])
  end

  private

  def set_winelog
    @winelog = Winelogbook.find(params[:winelogbook_id])
  end

  def wine_params
    params[:wine].permit(:title, :description, :vintage, :brand)
  end

end
