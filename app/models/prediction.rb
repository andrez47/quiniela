# == Schema Information
# Schema version: 20100601050502
#
# Table name: predictions
#
#  id      :integer(4)      not null, primary key
#  user_id :integer(4)
#  game_id :integer(4)
#  score1  :integer(4)      default(0)
#  score2  :integer(4)      default(0)
#  winner  :string(255)     default("0")
#  points  :integer(4)
#

class Prediction < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates_numericality_of :score1, :message => "Invalid number"
  validates_numericality_of :score2, :message => "Invalid number"
  validates_inclusion_of    :score1, :in => 0..99, :message => "Invalid number"
  validates_inclusion_of    :score2, :in => 0..99, :message => "Invalid number"
end
