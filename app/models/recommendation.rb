class Recommendation < ApplicationRecord
  # Direct associations

  belongs_to :category

  # Indirect associations

  # has_one    :category,
  #            :through => :state,
  #            :source => :category

  # Validations

  #temporarily disabled validates :recommendation, :presence => true

  validates :category_id, :presence => true

  validates :stage, :presence => true


end
