class AddStagesToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :stage1, :integer
    add_column :categories, :stage2, :integer
    add_column :categories, :stage3, :integer
    add_column :categories, :stage4, :integer
  end
end
