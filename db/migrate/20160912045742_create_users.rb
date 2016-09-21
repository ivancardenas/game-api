class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false do |t|
      t.string :user_id, null: false, limit: 30, default: ''
      t.string :name, null: false, limit: 30, default: ''
      t.string :pass, null: false, limit: 60, default: ''
      t.integer :status, default: 0, limit: 1
    end
    execute "ALTER TABLE users ADD PRIMARY KEY (user_id)"
  end
end
