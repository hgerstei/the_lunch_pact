class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :category_id
      t.integer :stage1
      t.integer :stage2
      t.integer :stage3
      t.integer :stage4

      t.timestamps

    end
  end
end
