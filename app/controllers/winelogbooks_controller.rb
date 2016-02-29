class WinelogbooksController < ApplicationController
  before_action :find_winelog_params, only: [:show, :edit, :update, :destroy]

  def index
    @winelogs = Winelogbook.all
  end

  def recent
    @winelogs = Winelogbook.recent
    render action: :index
  end

  def show
  end

  def new
    @winelog = Winelogbook.new
  end

  def create
    @winelog = Winelogbook.create(winelogparams)

    if @winelog.save
      redirect_to @winelog
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @winelog.update(winelogparams)
      redirect_to @winelog
    else
      render 'edit'
    end
  end

  def destroy
    @winelog.destroy

    redirect_to root_path
  end

  private

  def winelogparams
    params.require(:winelogbook).permit(:title, :description, :isprivate)
  end

  def find_winelog_params
    @winelog = Winelogbook.find(params[:id])
  end
end
