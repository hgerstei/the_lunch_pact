class Purchase < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :purchase_name, :presence => true

  validates :user_id, :presence => true

end
