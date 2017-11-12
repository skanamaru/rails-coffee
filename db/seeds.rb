# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, name: 'aaa', mail_address: 'aaa@example.com' )
User.create(id: 2, name: 'bbb', mail_address: 'bbb@example.com' )
User.create(id: 3, name: 'ccc', mail_address: 'ccc@example.com' )
User.create(id: 4, name: 'ddd', mail_address: 'ddd@example.com' )
User.create(id: 5, name: 'eee', mail_address: 'eee@example.com' )

DrinkCount.create(user_id: 1, count: 1)
DrinkCount.create(user_id: 2, count: 1)
DrinkCount.create(user_id: 3, count: 1)
DrinkCount.create(user_id: 4, count: 1)
DrinkCount.create(user_id: 1, count: 1)
