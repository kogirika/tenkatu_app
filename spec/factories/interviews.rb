FactoryBot.define do
  factory :interview do
    interview_day         { Faker::Date.in_date_period(month: 2) }
    charge                { Faker::Internet.username }
    memo                  { Faker::Lorem.paragraph }
    association :selection
  end
end