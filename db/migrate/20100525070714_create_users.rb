class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   :name
      t.string   :email
      t.string   :crypted_password
      t.string   :salt
      t.integer  :user_type, :default => 0
      t.string   :country
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.timestamps
    end

    add_index :users, :email, :unique => true
  end

  def self.down
    drop_table :users
  end
end
