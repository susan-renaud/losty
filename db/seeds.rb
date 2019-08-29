# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Claim.destroy_all
User.destroy_all

puts "Creating 3 users"
susan = User.create(email: 'susan@email.com', password: '123456', photo:'https://trello-avatars.s3.amazonaws.com/09bb4e88ee957c6d92c0601e0dd362a1/50.png')
raquel = User.create(email: 'raquel@email.com', password: '123456', photo: 'https://trello-avatars.s3.amazonaws.com/08bea5b387925b61f69ab76cb8760f92/50.png')
steph = User.create(email: 'steph@email.com', password: '123456', photo: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

puts "Creating 1 item each for 3 users"
Item.create(user: susan, name: 'Jacket', remote_photo_url: 'https://images.unsplash.com/photo-1543076447-215ad9ba6923?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80',
   description: 'I found this denim jacket with fleece collar around Hyde Park.',
   location: 'Hyde Park', question1: 'What size is this jacket?', question2: 'What brand is the jacket?',
  question3: 'Is there anything in the pockets?')

Item.create(user: raquel, name: 'Wallet', remote_photo_url: 'https://images.unsplash.com/photo-1512414947060-048d53abb081?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
   description: 'I found this brown wallet today at the overground Hoxton stop.',
   location: 'Hoxton', question1: 'Which platform was it on?', question2: 'What brand is the wallet?',
  question3: 'Anything that stands out inside of the wallet?')

Item.create(user: steph, name: 'Backpack', remote_photo_url: 'https://images.unsplash.com/photo-1541267732407-8f72c182cf11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80',
   description: 'This backpack was found in a restaurant in Canary Wharf.',
   location: 'Canary Wharf', question1: 'What brand is the backpack?', question2: 'What is inside the backpack?',
  question3: 'What restaurant was the backpack found in?')

Item.create(user: susan, name: 'Fancy fountain pen', remote_photo_url: 'https://images.unsplash.com/photo-1457298483369-0a95d2b17fcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
   description: 'This is a really nice fountain pen and I am sure the owner is missing it!',
   location: 'SE9 6BT', question1: 'What color ink does it have?', question2: 'What color is the end of the pen?',
  question3: 'What name is etched on the cap of the fountain pen?')

Item.create(user: raquel, name: 'Gloves', remote_photo_url: 'https://images.unsplash.com/photo-1515951806792-63ac4250f2f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
   description: 'I found these winter gloves at the library.',
   location: 'Kings Cross, London', question1: 'Are the adult or childrens gloves?', question2: 'What color is the lining?',
  question3: 'There is a stain on them, what color is it?')




puts 'Finished!'
