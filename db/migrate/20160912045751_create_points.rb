class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points, id: false do |t|
      t.integer :point_id, limit: 8, null: false
      t.integer :game_id, limit: 8, null: false
        t.index :game_id
      t.integer :x0, limit: 1, null: false
      t.integer :y0, limit: 1, null: false
      t.integer :x1, limit: 1, null: false
      t.integer :y1, limit: 1, null: false
    end
    execute "ALTER TABLE points ADD PRIMARY KEY (point_id)"
    execute "ALTER TABLE points modify COLUMN point_id bigint(20) AUTO_INCREMENT"
  end
end
