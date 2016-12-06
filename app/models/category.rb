class Category < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :type, :uniqueness => true

  validates :type, :presence => true

end
