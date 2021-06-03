FactoryBot.define do
  factory :item do
    checklist
    description { Faker::Company.bs }
  end
end
