# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Volume.create(id: 1, name: 'espresso')
Volume.create(id: 2, name: 'espresso-large')
Volume.create(id: 3, name: 'long-coffee')
Volume.create(id: 4, name: 'long-coffee-large')

Strength.create(id: 1, name: 'ex-mild')
Strength.create(id: 2, name: 'mild')
Strength.create(id: 3, name: 'standard')
Strength.create(id: 4, name: 'strong')
Strength.create(id: 5, name: 'ex-strong')

Type.create(id: 1, name: 'espresso-single')
Type.create(id: 2, name: 'espresso-double')
Type.create(id: 3, name: 'cafe-giapponee')

User.create(id: 1, name: 'aaa', mail_address: 'aaa@example.com' )
User.create(id: 2, name: 'bbb', mail_address: 'bbb@example.com' )
User.create(id: 3, name: 'ccc', mail_address: 'ccc@example.com' )
User.create(id: 4, name: 'ddd', mail_address: 'ddd@example.com' )
User.create(id: 5, name: 'eee', mail_address: 'eee@example.com' )

DrinkCount.create(user_id: 1, count: 1, volume_id: 1, strength_id: 1, type_id: 1)
DrinkCount.create(user_id: 2, count: 1, volume_id: 2, strength_id: 2, type_id: 2)
DrinkCount.create(user_id: 3, count: 1, volume_id: 1, strength_id: 1, type_id: 1)
DrinkCount.create(user_id: 4, count: 1, volume_id: 3, strength_id: 3, type_id: 3)
DrinkCount.create(user_id: 1, count: 1, volume_id: 1, strength_id: 2, type_id: 3)


