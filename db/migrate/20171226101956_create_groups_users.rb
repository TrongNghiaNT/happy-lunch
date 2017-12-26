class CreateGroupsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users_groups do |t|
      t.references :user, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true
    end
  end
end
