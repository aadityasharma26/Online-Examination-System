class CreateSubcourses < ActiveRecord::Migration[5.2]
  def change
    create_table :subcourses do |t|
      t.text :subcourse
      t.timestamps
    end
  end
end
