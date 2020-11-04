User.create!(
  [
    {
      name: "hoge",
      email: "hoge@example.com",
      password: "hoge12"
    },
    {
      name: "hoge2",
      email: "hoge2@example.com",
      password: "hoge12"
    }
  ]
)
Selection.create!(
  [
    {
      company_name: "A社",
      position: "SE",
      agent: "R",
      entry_day: "2020-10-30",
      phase_id: 0,
      live_flg: 1,
      refusal_reason: "",
      place: "東京駅",
      url: "https://www.yahoo.co.jp/",
      sumally: Faker::Lorem.paragraph,
      appeal: Faker::Lorem.paragraph,
      anxiety: Faker::Lorem.paragraph,
      memo: "テスト１",
      user_id: 1
    },
    {
      company_name: "B社",
      position: "テスター",
      agent: "D",
      entry_day: "2020-10-30",
      phase_id: 2,
      live_flg: 1,
      refusal_reason: "",
      place: "新宿",
      url: "https://www.google.co.jp/",
      sumally: Faker::Lorem.paragraph,
      appeal: Faker::Lorem.paragraph,
      anxiety: Faker::Lorem.paragraph,
      memo: "テスト2",
      user_id: 1
      },
    {
      company_name: "C社",
      position: "営業",
      agent: "E",
      entry_day: "2020-10-30",
      phase_id: 3,
      live_flg: 0,
      refusal_reason: "経験が満たなかったため",
      place: "中野",
      sumally: Faker::Lorem.paragraph,
      appeal: Faker::Lorem.paragraph,
      anxiety: Faker::Lorem.paragraph,
      memo: "テスト3",
      user_id: 1
    },
    {
      company_name: "D社",
      position: "事務",
      agent: "R",
      entry_day: "2020-10-30",
      phase_id: 0,
      live_flg: 1,
      refusal_reason: "",
      place: "立川",
      url: "",
      sumally: Faker::Lorem.paragraph,
      appeal: Faker::Lorem.paragraph,
      anxiety: Faker::Lorem.paragraph,
      memo: "テスト4",
      user_id: 2
    },
    {
      company_name: "E社",
      position: "アナリスト",
      agent: "TC",
      entry_day: "2020-10-30",
      phase_id: 5,
      live_flg: 1,
      refusal_reason: "",
      place: "高円寺",
      url: "",
      sumally: Faker::Lorem.paragraph,
      appeal: Faker::Lorem.paragraph,
      anxiety: Faker::Lorem.paragraph,
      memo: "テスト5",
      user_id: 2
    },
    {
      company_name: "F社",
      position: "分析",
      agent: "M",
      entry_day: "2020-10-30",
      phase_id: 6,
      live_flg: 0,
      refusal_reason: "他者比較のため",
      place: "武蔵境",
      url: "",
      sumally: Faker::Lorem.paragraph,
      appeal: Faker::Lorem.paragraph,
      anxiety: Faker::Lorem.paragraph,
      memo: "テスト6",
      user_id: 2
    }
  ]
)
Interview.create!(
  [
    {
      interview_day: "2020-11-7",
      charge: Faker::Name.last_name + "さん",
      memo: "印象は良かった。 質問：○○→回答：■■",
      selection_id: 2
    },
    {
      interview_day: "2020-11-08",
      charge: Faker::Name.last_name + "さん",
      memo: "印象は良かった。 質問：○○→回答：■■",
      selection_id: 3
    },
    {
      interview_day: "2020-11-18",
      charge: Faker::Name.last_name + "さん",
      memo: "失敗した。 質問：○○→回答：■■",
      selection_id: 3
    },
    {
      interview_day: "2020-11-20",
      charge: Faker::Name.last_name + "さん",
      memo: "印象は良かった。 質問：○○→回答：■■",
      selection_id: 5
    },
  ]
)