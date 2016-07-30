class Category < ActiveRecord::Base
  belongs_to :frequency
  has_many :movements

  validates :name, presence: true, uniqueness: true 
  validates :type_category, presence:true
  validates :frequency_id, presence: true
  validates :date_scheduled, presence: true #, format: { with:/\d{2}\/\d{2}\/\d{4}/}
  validates :value, presence: true, numericality: true

end
