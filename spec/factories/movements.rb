FactoryGirl.define do
  factory :movement do
    balance 1.5
    date_launched "2016-07-24"
    category { create(:category) }
  end
   
  factory :movement_despesa, class: Movement do
    balance 1.5
    date_launched "2016-07-24"
    category { create(:category_despesa) }
  end

  factory :movement_receita, class: Movement do
    balance 1.5
    date_launched "2016-07-24"
    category { create(:category_receita) }
  end

  factory :movement_nil, class: Movement do 
    balance nil
    date_launched nil
    category { create(:category_despesa) } 
  end
end
