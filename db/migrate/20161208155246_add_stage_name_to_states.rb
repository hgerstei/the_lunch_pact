class AddStageNameToStates < ActiveRecord::Migration[5.0]
  def change
    add_column :states, :stage_name, :string
  end
end
