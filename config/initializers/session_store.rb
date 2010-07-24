# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Ride4Cure_session',
  :secret      => 'b0ac1b5c00c3840354b73820bb7d1a13dc0d5598a2d062b51cb286859b93fe2ded21fd6774fb97f082be43ce3e262441a282e95973c7e5353a1b4a34e9859643'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
