class CreatePricerows < ActiveRecord::Migration
  def change
    create_table :pricerows do |t|
      t.float :value
      t.string :affix
      t.string :description
      t.string :currency
      t.integer :product_id

      t.timestamps
    end
  end
end
