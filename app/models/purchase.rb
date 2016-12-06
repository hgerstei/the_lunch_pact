class Purchase < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :purchase_date, :presence => true

  validates :purchase_name, :uniqueness => { :scope => [:category_id, :purchase_date] }

  validates :purchase_name, :presence => true

  validates :user_id, :presence => true

end
