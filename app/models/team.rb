# == Schema Information
# Schema version: 20100601050502
#
# Table name: teams
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  code           :string(255)
#  group          :string(255)
#  group_position :integer(4)
#

class Team < ActiveRecord::Base
  has_many :users
  has_many :games
end
