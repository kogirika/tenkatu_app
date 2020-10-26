class CreateSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :selections do |t|
      t.references :user, null: false, foreign_key: true
      t.string :company_name,    null: false
      t.string :position
      t.string :agent
      t.date :entry_day,         null: false
      t.integer :phase_id,       null: false
      t.boolean :live_flg,       null: false
      t.text :refusal_reason
      t.string :place
      t.string :url
      t.text :sumally
      t.text :appeal
      t.text :concern
      t.text :memo
      t.timestamps
    end
  end
end
