class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.boolean :promotion
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
