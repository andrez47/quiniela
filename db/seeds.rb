# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create(:name => "Administrator", :email => "admin@quiniela.com", :password => "11qwcsa10", :password_confirmation => "11qwcsa10", :country => "CR", :user_type => 1)

teams = Team.create([
  { :name => 'South Africa',   :code => 'STA', :group_name => 'A', :group_position => 1},
  { :name => 'Mexico',         :code => 'MEX', :group_name => 'A', :group_position => 2},
  { :name => 'Uruguay',        :code => 'URU', :group_name => 'A', :group_position => 3},
  { :name => 'France',         :code => 'FRA', :group_name => 'A', :group_position => 4},
  { :name => 'Argentina',      :code => 'ARG', :group_name => 'B', :group_position => 1},
  { :name => 'Nigeria',        :code => 'NIG', :group_name => 'B', :group_position => 2},
  { :name => 'Korea Republic', :code => 'KOS', :group_name => 'B', :group_position => 3},
  { :name => 'Greece',         :code => 'GRE', :group_name => 'B', :group_position => 4},
  { :name => 'England',        :code => 'ENG', :group_name => 'C', :group_position => 1},
  { :name => 'USA',            :code => 'USA', :group_name => 'C', :group_position => 2},
  { :name => 'Algeria',        :code => 'ALG', :group_name => 'C', :group_position => 3},
  { :name => 'Slovenia',       :code => 'SLV', :group_name => 'C', :group_position => 4},
  { :name => 'Germany',        :code => 'GER', :group_name => 'D', :group_position => 1},
  { :name => 'Australia',      :code => 'AUS', :group_name => 'D', :group_position => 2},
  { :name => 'Serbia',         :code => 'SER', :group_name => 'D', :group_position => 3},
  { :name => 'Ghana',          :code => 'GHA', :group_name => 'D', :group_position => 4},
  { :name => 'Netherlands',    :code => 'NET', :group_name => 'E', :group_position => 1},
  { :name => 'Denmark',        :code => 'DEN', :group_name => 'E', :group_position => 2},
  { :name => 'Japan',          :code => 'JAP', :group_name => 'E', :group_position => 3},
  { :name => 'Cameroon',       :code => 'CAM', :group_name => 'E', :group_position => 4},
  { :name => 'Italy',          :code => 'ITA', :group_name => 'F', :group_position => 1},
  { :name => 'Paraguay',       :code => 'PAR', :group_name => 'F', :group_position => 2},
  { :name => 'New Zealand',    :code => 'NEZ', :group_name => 'F', :group_position => 3},
  { :name => 'Slovakia',       :code => 'SLK', :group_name => 'F', :group_position => 4},
  { :name => 'Brazil',         :code => 'BRA', :group_name => 'G', :group_position => 1},
  { :name => 'Korea DPR',      :code => 'KON', :group_name => 'G', :group_position => 2},
  { :name => 'Côte d\'Ivoire', :code => 'COT', :group_name => 'G', :group_position => 3},
  { :name => 'Portugal',       :code => 'POR', :group_name => 'G', :group_position => 4},
  { :name => 'Spain',          :code => 'SPA', :group_name => 'H', :group_position => 1},
  { :name => 'Switzerland',    :code => 'SWI', :group_name => 'H', :group_position => 2},
  { :name => 'Honduras',       :code => 'HON', :group_name => 'H', :group_position => 3},
  { :name => 'Chile',          :code => 'CHI', :group_name => 'H', :group_position => 4}
])
