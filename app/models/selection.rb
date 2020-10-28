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
  has_many :interviews

  #登録（若い）順ソート
  def self.sort_young(data)
    data.order(id: "DESC")
  end

  #ユーザーごとの絞り
  def self.descope_user(user_id)
    data = Selection.where(user_id: user_id)
    sort_young(data)
  end

end
