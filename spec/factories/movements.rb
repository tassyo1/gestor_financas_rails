FactoryGirl.define do
  factory :movement do
    balance 1.5
    date_launched "2016-07-24"
    category { create(:category) }
  end
end
