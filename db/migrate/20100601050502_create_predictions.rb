class CreatePredictions < ActiveRecord::Migration
  def self.up
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :score1, :default => 0
      t.integer :score2, :default => 0
      t.string  :winner, :default => 0
      t.integer :points
    end

    add_index :predictions, :user_id
    add_index :predictions, :game_id
  end

  def self.down
    drop_table :predictions
  end
end
