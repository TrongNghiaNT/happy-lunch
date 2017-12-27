class CreateOrdersUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
    end
  end
end
