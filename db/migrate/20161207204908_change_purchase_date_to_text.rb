class ChangePurchaseDateToText < ActiveRecord::Migration[5.0]
  def change
    change_column :purchases, :purchase_date, :text
  end
end
