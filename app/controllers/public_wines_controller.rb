class PublicWinesController < ApplicationController
  def discover_wines
    @wines = Wine.all.order("created_at DESC")
  end

  def discover_winelogs
    @winelogs = Winelogbook.all.order("created_at DESC")
  end
end
