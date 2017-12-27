class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.integer :owner_id
      t.string :avatar
      t.timestamps null: false
    end
  end
end
