FactoryGirl.define do
 factory :category do
    name "MyString"
    value 1.5
    date_scheduled "2016-07-14"
    type_category "D"
    frequency { create(:frequency) }
  end

  factory :category_despesa, class: Category do
    name "Despesa"
    value 1.5
    date_scheduled "2016-07-14"
    type_category "D"
    frequency { create(:frequency) }
  end

  factory :category_receita, class: Category do 
    name "Receita"
    value 1.5
    date_scheduled "2016-07-29"
    type_category "R"
    frequency { create(:frequency) }
  end
end
