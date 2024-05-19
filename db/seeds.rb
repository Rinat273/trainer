# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# user1 = User.create!(email: "user1@gmail.com", encrypted_password: "123")
# user2 = User.create!(email: "user2@gmail.com", encrypted_password: "1234")

# tariff1 = Tariff.create!(title: "Утренний", price: 1000)
# tariff2 = Tariff.create!(title: "Дневной", price: 800)

# User.create!(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'test1@example.com', :password => 'password', :password_confirmation => 'password')
