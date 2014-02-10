# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Scheduler::Application.config.secret_key_base = 'd9e181878415967d3f680e7b0c18e9e3e23fb7ea89b2a69fd6954be85f70272085b56c1ffb5574e9daca277c151b0a2b3492e52d5bda5dcfb99bb66f72d184a4'
