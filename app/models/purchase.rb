class Purchase < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :category,
             :counter_cache => true

  # Indirect associations

  has_many :recommendations,
  :through => :category_id,
  :source => :recommendations

  # Validations

  validates :category_id, :presence => true

  validates :purchase_date, :presence => true

  validates :purchase_name, :uniqueness => { :scope => [:category_id, :purchase_date] }

  validates :purchase_name, :presence => true

  validates :user_id, :presence => true

  

  def recommendation_stage4
    Recommendation.find_by(stage:'stage4').recommendation
  end

  def recommendation_stage3
    Recommendation.find_by(stage:'stage3').recommendation
  end

  def recommendation_stage2
    Recommendation.find_by(stage:'stage2').recommendation
  end

  def recommendation_stage1
    Recommendation.find_by(stage:'stage1').recommendation
  end


end
