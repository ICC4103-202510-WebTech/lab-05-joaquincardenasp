# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#10 Users
user1 = User.create!(email: 'joaquin@example.com' , first_name: 'Joaquin', last_name: 'Cardenas')
user2 = User.create!(email: 'gon@example.com' , first_name: 'Gon', last_name: 'Freecss')
user3 = User.create!(email: 'popeye@example.com', first_name: 'Popeye', last_name: 'The Sailor')
user4 = User.create!(email: 'naruto@example.com', first_name: 'Naruto', last_name: 'Uzumaki')
user5 = User.create!(email: 'spongebob@example.com', first_name: 'SpongeBob', last_name: 'SquarePants')
user6 = User.create!(email: 'patrick@example.com', first_name: 'Patrick', last_name: 'Star')
user7 = User.create!(email: 'finn@example.com', first_name: 'Finn', last_name: 'The Human')
user8 = User.create!(email: 'jake@example.com', first_name: 'Jake', last_name: 'The Dog')
user9 = User.create!(email: 'luffy@example.com', first_name: 'Luffy', last_name: 'Monkey D.')
user10 = User.create!(email: 'zoro@example.com', first_name: 'Zoro', last_name: 'Roronoa')



#10 Chats
chat1 = Chat.create!(sender_id: user1.id , receiver_id: user2.id)
chat2 = Chat.create!(sender_id: user1.id , receiver_id: user3.id)
chat3 = Chat.create!(sender_id: user1.id , receiver_id: user4.id)
chat4 = Chat.create!(sender_id: user1.id , receiver_id: user5.id)
chat5 = Chat.create!(sender_id: user1.id , receiver_id: user6.id)
chat6 = Chat.create!(sender_id: user1.id , receiver_id: user7.id)
chat7 = Chat.create!(sender_id: user1.id , receiver_id: user8.id)
chat8 = Chat.create!(sender_id: user1.id , receiver_id: user9.id)
chat9 = Chat.create!(sender_id: user1.id , receiver_id: user10.id)
chat10 = Chat.create!(sender_id: user2.id , receiver_id: user3.id)
#10 Messages
Message.create!(chat_id: chat1.id , user_id: user1.id , body: 'Hello Gon!')
Message.create!(chat_id: chat2.id , user_id: user1.id , body: 'Hello Popeye!')
Message.create!(chat_id: chat3.id , user_id: user1.id , body: 'Hello Naruto!')
Message.create!(chat_id: chat4.id , user_id: user1.id , body: 'Hello SpongeBob!')
Message.create!(chat_id: chat5.id , user_id: user1.id , body: 'Hello Patrick!')
Message.create!(chat_id: chat6.id , user_id: user1.id , body: 'Hello Finn!')
Message.create!(chat_id: chat7.id , user_id: user1.id , body: 'Hello Jake!')
Message.create!(chat_id: chat8.id , user_id: user1.id , body: 'Hello Luffy!')
Message.create!(chat_id: chat9.id , user_id: user1.id , body: 'Hello Zoro!')
Message.create!(chat_id: chat10.id , user_id: user2.id , body: 'Hello Popeye! I am Gon!')