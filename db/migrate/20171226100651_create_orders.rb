class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :description
      t.datetime :lunch_time
      t.string :place
      t.boolean :is_ordered, default: false
      t.timestamps null: false
    end
  end
end
