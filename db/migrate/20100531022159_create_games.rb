class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer  :team1_id
      t.integer  :team2_id
      t.integer  :score1
      t.integer  :score2
      t.string   :phase
      t.integer  :number
      t.string   :winner
      t.datetime :date
      t.datetime :update_date
    end

    add_index :games, :team1_id
    add_index :games, :team2_id
  end

  def self.down
    drop_table :games
  end
end
