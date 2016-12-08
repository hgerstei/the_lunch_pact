class ChangeDateToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :purchases, :purchase_date, :date
  end
end
