class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string  :name
      t.string  :code
      t.string  :group_name
      t.integer :group_position
    end

  end

  def self.down
    drop_table :teams
  end
end
