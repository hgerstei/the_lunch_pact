class RemoveStageFromStates < ActiveRecord::Migration[5.0]
  def change
    add_column :states, :stage, :integer
    remove_column :states, :stage1
    remove_column :states, :stage2
    remove_column :states, :stage3
    remove_column :states, :stage4
  end
end
