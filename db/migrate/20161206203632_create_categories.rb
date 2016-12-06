class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :type
      t.text :sub_categories
      t.string :photo_url
      t.integer :lifespan
      t.boolean :refrigeration
      t.text :storage_suggestions

      t.timestamps

    end
  end
end
