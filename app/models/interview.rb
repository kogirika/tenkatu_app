class Interview < ApplicationRecord
  # バリデーション
  validates :interview_day, presence: true

  #アソシエーション
  belongs_to :selection

  #メソッドーーーーーーーーーーーーーーーーーーーーー
  #selectionごとの絞り
  def self.descope_selection(selection_id)
    data = Interview.where(selection_id: selection_id)
    sort_young(data)
  end

end
