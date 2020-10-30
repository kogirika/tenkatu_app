class Selection < ApplicationRecord
  # ActiveHashのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :phase

  #初期値設定
  attribute :live_flg, :boolean, default: true

  # バリデーション
  with_options presence: true do
    validates :company_name, :phase_id, :entry_day
  end

  #アソシエーション
  belongs_to :user
  has_many :interviews, dependent: :destroy

  #メソッドーーーーーーーーーーーーーーーーーーーーー
  #ユーザーごとの絞り
  def self.descoped_user(user_id)
    data = Selection.where(user_id: user_id)
  end

  #一覧表示＆検索
  def self.descoped_selection(user_id, live_search, phase_search)
    data = descoped_user(user_id)
    if live_search == "all" and phase_search != "all"
      data = data.where(phase_id: phase_search)
    elsif live_search != "all" and phase_search == "all"
      data = data.where(live_flg: live_search)
    elsif live_search != "all" and phase_search != "all"
      data = data.where(phase_id: phase_search, live_flg: live_search)
    end
    sort_young(data)
  end

end
