class Interview < ApplicationRecord
  # バリデーション
  validates :interview_day, presence: true

  #アソシエーション
  belongs_to :selection

end
