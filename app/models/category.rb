class Category < ActiveRecord::Base
  belongs_to :frequency

  validates :name, presence: true, uniqueness: true 
  validates :type_category, presence:true
  validates :frequency_id, presence: true
  validates :date_scheduled, presence: true
  validates :value, presence: true, numericality: true

end
