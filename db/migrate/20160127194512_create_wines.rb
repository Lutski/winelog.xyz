class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :title
      t.text :description
      t.datetime :vintage
      t.string :brand
      t.references :winelogbook, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
