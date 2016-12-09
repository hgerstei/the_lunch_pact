class Purchase < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :category

  # Indirect associations

  # has_many :recommendations,
  # :through => :category

  # Validations

  validates :category_id, :presence => true

  validates :purchase_date, :presence => true

  validates :purchase_name, :uniqueness => { :scope => [:category_id, :purchase_date] }

  validates :purchase_name, :presence => true

  validates :user_id, :presence => true

  def stage
    if category.stage4 <= Date.today - purchase_date
        'stage4'
    elsif category.stage3 <= Date.today - purchase_date && Date.today - purchase_date < category.stage4
        'stage3'
    elsif category.stage2 <= Date.today - purchase_date && Date.today - purchase_date < category.stage3
        'stage2'
    elsif category.stage1 <= Date.today - purchase_date && Date.today - purchase_date < category.stage2
        'stage1'
    end
  end

  def recommendation
    recommendations.find_by(stage: stage)
  end

  def recommendations
    category.recommendations
  end


end
