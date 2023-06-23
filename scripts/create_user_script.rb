# scripts/create_user_script.rb

# Ensure Rails environment is loaded
require_relative '../config/environment'

user = User.create(username: "hunzai", email: "hunzai@example.com", name: "Hunzai")
puts "User created successfully with ID: #{user.id}"
