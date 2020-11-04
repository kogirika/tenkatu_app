class Interview < ApplicationRecord
  # バリデーション
  validates :interview_day, presence: true
  validate :date_valid?

  #アソシエーション
  belongs_to :selection

  #メソッドーーーーーーーーーーーーーーーーーーーーー
  #selectionごとの絞り
  def self.descope_selection(selection_id)
    data = Interview.where(selection_id: selection_id)
    sort_young(data)
  end

  #不正な時間チェック
  private
  def date_valid?
    !! Date.parse(:entry_day) rescue false
  end


end
