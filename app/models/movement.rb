class Movement < ActiveRecord::Base
  belongs_to :category

  validates :balance, presence: true, numericality: true
  validates :date_launched, presence: true
  validates :category_id, presence: true
end
