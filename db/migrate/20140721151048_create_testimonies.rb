class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :content
      t.string :name

      t.timestamps
    end
  end
end
