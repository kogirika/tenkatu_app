FactoryBot.define do
  factory :selection do
    company_name          { ForgeryJa(:name).company_name }
    position              { ForgeryJa(:name).job_title }
    agent                 { ForgeryJa(:name).company_name }
    entry_day             { Faker::Date.in_date_period(month: 2) }
    phase_id              { Faker::Number.between(from: 0, to: 6) }
    live_flg              { Faker::Boolean.boolean }
    refusal_reason        { Faker::Lorem.paragraph }
    place                 { Faker::Address.city }
    url                   { Faker::Internet.url(host: 'example.com') }
    sumally               { Faker::Lorem.paragraph }
    appeal                { Faker::Lorem.paragraph }
    anxiety               { Faker::Lorem.paragraph }
    memo                  { Faker::Lorem.paragraph }
    association :user
  end
end
