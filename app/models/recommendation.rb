class Recommendation < ApplicationRecord
  # Direct associations

  belongs_to :state

  # Indirect associations

  has_one    :category,
             :through => :state,
             :source => :category

  # Validations

  validates :recommendation, :presence => true

  validates :state_id, :presence => true

end
