FactoryBot.define do
  factory :user do
    name                  { Faker::Internet.username }
    email                 { Faker::Internet.email(domain: "example") }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
