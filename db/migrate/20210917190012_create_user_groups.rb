class CreateUserGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :user_groups do |t|
      t.string :invite_status
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
