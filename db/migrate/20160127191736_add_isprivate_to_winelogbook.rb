class AddIsprivateToWinelogbook < ActiveRecord::Migration
  def change
    add_column :winelogbooks, :isprivate, :boolean, default: false
  end
end
