# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ryad = User.create(username: 'Ryad', email: 'ryad@gmail.com', password: 'julia123', password_confirmation: 'julia123')
gordana = User.create(username: 'Gordana', email: 'Gordana@gmail.com', password: 'gordana123', password_confirmation: 'Gordana123')


file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575355/development/5_ndptts.jpg')
raphael = Character.new(name: 'Ryad', world: 'Onyw', race: "mutan")
raphael.photo.attach(io: file, filename: 'Raphael.png', content_type: 'image/jpg')

raphael.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653581961/turtle2_s9xeqx.png')
sunny = Character.new(name: 'Gordana', world: 'Middle earth', race: "Elf")
sunny.photo.attach(io: file, filename: 'sunny.png', content_type: 'image/png')

sunny.save

test1 = Chatroom.new(name: "test_1")
test1.character = raphael
test1.save

test2 = Chatroom.new(name: "test_1")
test2.character = sunny
test2.save
