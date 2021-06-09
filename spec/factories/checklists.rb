FactoryBot.define do
  factory :checklist do
    name { Faker::Company.bs }
    call_to_action { "Click here!" }
    email_when_finished { Faker::Internet.email }
    uri { SecureRandom.hex[0..5] }
  end
end
