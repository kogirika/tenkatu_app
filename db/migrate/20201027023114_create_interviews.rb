class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.references :selection, null: false, foreign_key: true
      t.date :interview_day,   null: false
      t.string :charge
      t.text :memo
      t.timestamps
    end
  end
end
