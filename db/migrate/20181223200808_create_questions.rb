class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_type
      t.text :question
      t.text :description
      t.string :answer
      t.timestamps
    end
  end
end
