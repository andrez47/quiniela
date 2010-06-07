# == Schema Information
# Schema version: 20100601050502
#
# Table name: users
#
#  id                        :integer(4)      not null, primary key
#  name                      :string(255)
#  email                     :string(255)
#  crypted_password          :string(255)
#  salt                      :string(255)
#  user_type                 :integer(4)      default(0)
#  country                   :string(255)
#  team_id                   :integer(4)
#  remember_token            :string(255)
#  remember_token_expires_at :datetime
#  created_at                :datetime
#  updated_at                :datetime
#

require 'digest/sha1'

class User < ActiveRecord::Base
  belongs_to :team
  has_many :predictions

  include Authentication
  include Authentication::ByPassword
  include Authentication::ByCookieToken

  validates_format_of       :name,     :with => Authentication.name_regex,  :message => Authentication.bad_name_message, :allow_nil => true
  validates_length_of       :name,     :within => 6..100
  validates_presence_of     :email
  validates_length_of       :email,    :within => 6..100 #r@a.wk
  validates_format_of       :email,    :with => Authentication.email_regex, :message => Authentication.bad_email_message
  validates_uniqueness_of   :email
  validates_presence_of     :country
  validates_presence_of     :team_id
  #validates_inclusion_of    :user_type, :in => 0..1
  validates_acceptance_of   :terms_of_service

  # HACK HACK HACK -- how to do attr_accessible from here?
  # prevents a user from submitting a crafted form that bypasses activation
  # anything else you want your user to change should be added here.
  attr_accessible :email, :name, :password, :password_confirmation, :country, :user_type, :terms_of_service, :team_id

  # Authenticates a user by their login name and unencrypted password.
  # Returns the user or nil.
  # uff.  this is really an authorization, not authentication routine.
  # We really need a Dispatch Chain here or something.
  # This will also let us return a human error message.
  #
  def self.authenticate(email, password)
    return nil if email.blank? || password.blank?
    u = find_by_email(email.downcase) # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  def email=(value)
    write_attribute :email, (value ? value.downcase : nil)
  end

  def create_predictions_set
    games = Game.find(:all)

    for game in games
      prediction = Prediction.new()
      prediction.user_id = self.id
      prediction.game_id = game.id
      prediction.save()
    end
  end

  def get_predictions_by_phase(phase)
    predictions = Prediction.find(:all,
      :conditions => ["user_id = ? and g.phase = ?", self.id, phase],
      :joins => "inner join games as g on game_id = g.id")
  end

  def get_predictions
    predictions = [
      get_predictions_by_phase('A'),
      get_predictions_by_phase('B'),
      get_predictions_by_phase('C'),
      get_predictions_by_phase('D'),
      get_predictions_by_phase('E'),
      get_predictions_by_phase('F'),
      get_predictions_by_phase('G'),
      get_predictions_by_phase('H')
    ]
  end
end
