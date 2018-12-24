class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.integer :exam_date
      t.string :subject
      t.string :question_type
      t.integer :total_mark
      t.integer :obtain_mark
      t.integer :total_time
      t.timestamps
    end
  end
end
