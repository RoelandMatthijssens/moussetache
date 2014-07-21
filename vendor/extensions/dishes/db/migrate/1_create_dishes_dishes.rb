class CreateDishesDishes < ActiveRecord::Migration

  def up
    create_table :refinery_dishes do |t|
      t.string :name
      t.float :price
      t.boolean :promotion
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-dishes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/dishes/dishes"})
    end

    drop_table :refinery_dishes

  end

end
