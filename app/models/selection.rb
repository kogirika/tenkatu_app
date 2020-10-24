class Selection < ApplicationRecord
  # ActiveHashのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :phase

# バリデーション
with_options presence: true do
  validates :company_name, :phase_id, :entry_day, :live_flg
end

#アソシエーション
belongs_to :user

end
