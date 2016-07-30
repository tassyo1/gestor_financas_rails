class Movement < ActiveRecord::Base
  belongs_to :category

  validates :balance, presence: true, numericality: true
  validates :date_launched, presence: true
  validates :category_id, presence: true

  def update_balances()
    self.balance = Movement.last.nil? ? 0 : Movement.last.balance

    if self.category.type_category == "D"
      self.balance -= self.category.value
    else
      self.balance += self.category.value
    end
  end

  def self.movement_schedule
    eventuais = Category.joins("LEFT JOIN movements ON categories.id = movements.category_id")
      .where("date_scheduled <= ? AND frequency_id = 1 AND movements.category_id is NULL",Date.parse(Time.now.to_s).to_s)

    eventuais.each do |e|
      movement = Movement.new
      movement.category = e
      movement.date_launched = e.date_scheduled
      movement.update_balances()
      movement.save
    end
  end

end
