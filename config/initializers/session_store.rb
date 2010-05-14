# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_quiniela_session',
  :secret      => '089bfe2915abf54b30d561a988fe91e4f2cd8228cde9d836f0d8467b8c9091287832ace99a4c0875c4ebcb3b49f15d182d5d93afd9b1904096798feb689d2566'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
