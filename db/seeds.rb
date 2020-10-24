User.create!(
  [
    {
      name: 'hoge',
      email: 'hoge@example.com',
      password: 'hoge12'
    },
    {
      name: 'hoge2',
      email: 'hoge2@example.com',
      password: 'hoge12'
    }
  ]
)
# User.all.each do |user|
#   user.selections.create!(
#       name: "A社",
#       phase_id: "0",
#       entry_day: "2020-10-10",
#       refusal_reason: "",
#       memo: "hogehoge",
#       live: true
#   )
# end