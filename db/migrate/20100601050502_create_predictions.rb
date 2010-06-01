class CreatePredictions < ActiveRecord::Migration
  def self.up
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :score1
      t.integer :score2
      t.string  :winner
      t.integer :points
    end
  end

  #add_index :predictions, :user_id
  #add_index :predictions, :game_id

  def self.down
    drop_table :predictions
  end
end
