FactoryBot.define do
    factory :user do
      email { Faker::Internet.unique.email }
    end
end