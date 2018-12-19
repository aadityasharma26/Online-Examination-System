class CreateExaminees < ActiveRecord::Migration[5.2]
  def change
    create_table :examinees do |t|
      t.string :name
      t.integer :number
      t.string :email
      t.string :password
      t.string :address
      t.string :category
      t.string :subcategory
      t.string :subject
      t.string :question_type
      t.string :total_mark
      t.string :obtain_mark
      t.timestamps
    end
  end
end
