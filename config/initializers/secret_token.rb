# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Webhook::Application.config.secret_key_base = '0312c0b9b20348c6969f7f78010aaa182925bb1197085819335b8ba6e799933efaef0c35f315809733559cc573915173d791f8b15e230637cd7b3b3d7536dbc0'
