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

end
