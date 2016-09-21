class CreateGames < ActiveRecord::Migration
  def change
    create_table :games, id: false do |t|
      t.integer :game_id, null: false, limit: 8
      t.string :user_id, null: false, limit: 30, default: ''
        t.index :user_id
      t.string :winner, limit: 30, default: ''
      t.integer :status, limit: 3, default: 2
      t.string :player, limit: 30, null: false, default: ''
      t.integer :userp, limit: 8, default: 0
      t.integer :playerp, limit: 8, default: 0
      t.integer :userq, limit: 8, default: 0
      t.integer :playerq, limit: 8, default: 0
    end
    execute "ALTER TABLE games ADD PRIMARY KEY (game_id)"
    execute "ALTER TABLE games modify COLUMN game_id bigint(20) AUTO_INCREMENT"
  end
end
