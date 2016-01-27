class CreateWinelogbooks < ActiveRecord::Migration
  def change
    create_table :winelogbooks do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
