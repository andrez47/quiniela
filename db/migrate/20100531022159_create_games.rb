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
      t.date     :date
      t.datetime :update_date
    end
  end

  def self.down
    drop_table :games
  end
end
