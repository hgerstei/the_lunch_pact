class Category < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :photo_url, :presence => true

  validates :refrigeration, :presence => true

  validates :storage_suggestions, :presence => true

  validates :type, :uniqueness => true

  validates :type, :presence => true

end
