# == Schema Information
# Schema version: 20100601050502
#
# Table name: games
#
#  id          :integer(4)      not null, primary key
#  team1_id    :integer(4)
#  team2_id    :integer(4)
#  score1      :integer(4)
#  score2      :integer(4)
#  phase       :string(255)
#  number      :integer(4)
#  winner      :string(255)
#  date        :date
#  update_date :datetime
#

class Game < ActiveRecord::Base
  has_many :predictions
  belongs_to :team1, :class_name => "Team", :foreign_key => "team1_id"
  belongs_to :team2, :class_name => "Team", :foreign_key => "team2_id"
end
