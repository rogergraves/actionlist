FactoryBot.define do
  factory :user_item do
    user
    item
    checked { true }
  end
end
