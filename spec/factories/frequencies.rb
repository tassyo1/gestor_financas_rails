FactoryGirl.define do
  factory :frequency do
    name "mensal"
  end

  factory :frequency_eventual, class:Frequency do
    name "eventual"
  end
end
