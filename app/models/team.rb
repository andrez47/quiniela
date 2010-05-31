# == Schema Information
# Schema version: 20100531002439
#
# Table name: teams
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  code           :string(255)
#  group_name     :string(255)
#  group_position :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class Team < ActiveRecord::Base
  belongs_to :user
end
