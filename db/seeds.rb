# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create(:name => "Administrator", :email => "admin@quiniela.com", :password => "11qwcsa10", :password_confirmation => "11qwcsa10", :country => "CR", :user_type => 1, :team_id => 1)
User.create(:name => "Andres Hernandez", :email => "andrez47@gmail.com", :password => "123123", :password_confirmation => "123123",    :country => "CR", :user_type => 0, :team_id => 25)

teams = Team.create([
  { :name => 'South Africa',   :code => 'STA', :group => 'A', :group_position => 1},
  { :name => 'Mexico',         :code => 'MEX', :group => 'A', :group_position => 2},
  { :name => 'Uruguay',        :code => 'URU', :group => 'A', :group_position => 3},
  { :name => 'France',         :code => 'FRA', :group => 'A', :group_position => 4},
  { :name => 'Argentina',      :code => 'ARG', :group => 'B', :group_position => 1},
  { :name => 'Nigeria',        :code => 'NIG', :group => 'B', :group_position => 2},
  { :name => 'Korea Republic', :code => 'KOS', :group => 'B', :group_position => 3},
  { :name => 'Greece',         :code => 'GRE', :group => 'B', :group_position => 4},
  { :name => 'England',        :code => 'ENG', :group => 'C', :group_position => 1},
  { :name => 'USA',            :code => 'USA', :group => 'C', :group_position => 2},
  { :name => 'Algeria',        :code => 'ALG', :group => 'C', :group_position => 3},
  { :name => 'Slovenia',       :code => 'SLV', :group => 'C', :group_position => 4},
  { :name => 'Germany',        :code => 'GER', :group => 'D', :group_position => 1},
  { :name => 'Australia',      :code => 'AUS', :group => 'D', :group_position => 2},
  { :name => 'Serbia',         :code => 'SER', :group => 'D', :group_position => 3},
  { :name => 'Ghana',          :code => 'GHA', :group => 'D', :group_position => 4},
  { :name => 'Netherlands',    :code => 'NET', :group => 'E', :group_position => 1},
  { :name => 'Denmark',        :code => 'DEN', :group => 'E', :group_position => 2},
  { :name => 'Japan',          :code => 'JAP', :group => 'E', :group_position => 3},
  { :name => 'Cameroon',       :code => 'CAM', :group => 'E', :group_position => 4},
  { :name => 'Italy',          :code => 'ITA', :group => 'F', :group_position => 1},
  { :name => 'Paraguay',       :code => 'PAR', :group => 'F', :group_position => 2},
  { :name => 'New Zealand',    :code => 'NEZ', :group => 'F', :group_position => 3},
  { :name => 'Slovakia',       :code => 'SLK', :group => 'F', :group_position => 4},
  { :name => 'Brazil',         :code => 'BRA', :group => 'G', :group_position => 1},
  { :name => 'Korea DPR',      :code => 'KON', :group => 'G', :group_position => 2},
  { :name => 'Côte d\'Ivoire', :code => 'COT', :group => 'G', :group_position => 3},
  { :name => 'Portugal',       :code => 'POR', :group => 'G', :group_position => 4},
  { :name => 'Spain',          :code => 'SPA', :group => 'H', :group_position => 1},
  { :name => 'Switzerland',    :code => 'SWI', :group => 'H', :group_position => 2},
  { :name => 'Honduras',       :code => 'HON', :group => 'H', :group_position => 3},
  { :name => 'Chile',          :code => 'CHI', :group => 'H', :group_position => 4}
])

games = Game.create([
  { :team1_id => 1,  :team2_id => 2,  :phase => 'A', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 3,  :team2_id => 4,  :phase => 'A', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 1,  :team2_id => 3,  :phase => 'A', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 4,  :team2_id => 2,  :phase => 'A', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 2,  :team2_id => 3,  :phase => 'A', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 4,  :team2_id => 1,  :phase => 'A', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 5,  :team2_id => 6,  :phase => 'B', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 7,  :team2_id => 8,  :phase => 'B', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 5,  :team2_id => 7,  :phase => 'B', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 8,  :team2_id => 6,  :phase => 'B', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 6,  :team2_id => 7,  :phase => 'B', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 8,  :team2_id => 5,  :phase => 'B', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 9,  :team2_id => 10, :phase => 'C', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 11, :team2_id => 12, :phase => 'C', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 11, :team2_id => 11, :phase => 'C', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 12, :team2_id => 10, :phase => 'C', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 10, :team2_id => 11, :phase => 'C', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 12, :team2_id => 9,  :phase => 'C', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 13, :team2_id => 14, :phase => 'D', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 15, :team2_id => 16, :phase => 'D', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 13, :team2_id => 15, :phase => 'D', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 16, :team2_id => 14, :phase => 'D', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 14, :team2_id => 15, :phase => 'D', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 16, :team2_id => 13, :phase => 'D', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 17, :team2_id => 18, :phase => 'E', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 19, :team2_id => 20, :phase => 'E', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 17, :team2_id => 19, :phase => 'E', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 20, :team2_id => 18, :phase => 'E', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 18, :team2_id => 19, :phase => 'E', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 20, :team2_id => 17, :phase => 'E', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 21, :team2_id => 22, :phase => 'F', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 23, :team2_id => 24, :phase => 'F', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 21, :team2_id => 23, :phase => 'F', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 24, :team2_id => 22, :phase => 'F', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 22, :team2_id => 23, :phase => 'F', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 24, :team2_id => 21, :phase => 'F', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 25, :team2_id => 26, :phase => 'G', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 27, :team2_id => 28, :phase => 'G', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 25, :team2_id => 27, :phase => 'G', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 28, :team2_id => 26, :phase => 'G', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 26, :team2_id => 27, :phase => 'G', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 28, :team2_id => 25, :phase => 'G', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 29, :team2_id => 30, :phase => 'H', :number => 1, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 31, :team2_id => 32, :phase => 'H', :number => 2, :date => '2010-06-11', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 29, :team2_id => 31, :phase => 'H', :number => 3, :date => '2010-06-16', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 32, :team2_id => 30, :phase => 'H', :number => 4, :date => '2010-06-17', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 30, :team2_id => 31, :phase => 'H', :number => 5, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'},
  { :team1_id => 32, :team2_id => 29, :phase => 'H', :number => 6, :date => '2010-06-22', :update_date => '2010-06-11 15:00:00'}
])
