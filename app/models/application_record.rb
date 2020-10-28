class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  #メソッドーーーーーーーーーーーーーーーーーーーーー
  #登録（若い）順ソート
  def self.sort_young(data)
    data.order(id: "DESC")
  end

end
