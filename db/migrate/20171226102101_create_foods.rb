class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :votes_count, null: false, default: 0
      t.references :order, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
