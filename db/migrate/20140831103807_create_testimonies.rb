class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :author
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
