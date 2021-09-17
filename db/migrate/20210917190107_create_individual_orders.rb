class CreateIndividualOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :individual_orders do |t|
      t.string :order
      t.string :notes
      t.integer :order_id

      t.timestamps
    end
  end
end
