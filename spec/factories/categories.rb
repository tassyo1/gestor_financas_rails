FactoryGirl.define do
  factory :category do
    name "MyString"
    value 1.5
    date_scheduled "2016-07-14"
    type_category "D"
    frequency { create(:frequency) }
  end
end
