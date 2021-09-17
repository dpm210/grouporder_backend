class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :location
      t.datetime :order_time
      t.integer :user_groups_id

      t.timestamps
    end
  end
end
