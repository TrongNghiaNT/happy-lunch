class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true
    end
  end
end
