class CreateCategoryPages < ActiveRecord::Migration
  def change
    create_table :category_pages do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
