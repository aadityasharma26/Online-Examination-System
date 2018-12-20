class AddUserIdToExaminee < ActiveRecord::Migration[5.2]
  def change
    add_column :examinees, :user_id, :integer
  end
end
