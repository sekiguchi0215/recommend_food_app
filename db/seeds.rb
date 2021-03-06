# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

email = "test@example.com"
password = "password"

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "tanaka@example.com", password: "password")
user3 = User.create!(email: "suzuki@example.com", password: "password")

user1.foods.create!(name: "玉子焼き")
user1.foods.create!(name: "味噌汁")
user2.foods.create!(name: "焼き魚")
user3.foods.create!(name: "たくあん")
user3.foods.create!(name: "コーンフレーク")

User.create!(email: email, password: password)

# puts "ユーザーの初期データインポートに成功しました。"
