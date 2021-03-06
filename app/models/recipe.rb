class Recipe < ApplicationRecord
  # Direct associations

  belongs_to :state

  # Indirect associations

  has_one    :category,
             :through => :state,
             :source => :category

  # Validations

  validates :recipe_name, :uniqueness => true

  validates :recipe_name, :presence => true

  validates :recipe_url, :presence => true

  validates :state_id, :presence => true

end
