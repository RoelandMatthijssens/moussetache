
FactoryGirl.define do
  factory :dish, :class => Refinery::Dishes::Dish do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

