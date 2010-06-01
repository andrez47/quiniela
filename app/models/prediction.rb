# == Schema Information
# Schema version: 20100601050502
#
# Table name: predictions
#
#  id      :integer(4)      not null, primary key
#  user_id :integer(4)
#  game_id :integer(4)
#  score1  :integer(4)
#  score2  :integer(4)
#  winner  :string(255)
#  points  :integer(4)
#

class Prediction < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
end
