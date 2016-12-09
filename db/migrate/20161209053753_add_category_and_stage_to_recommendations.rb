class AddCategoryAndStageToRecommendations < ActiveRecord::Migration[5.0]
  def change
    add_column :recommendations, :category_id, :integer
    add_column :recommendations, :stage, :string
    remove_column :recommendations, :state_id
  end
end
