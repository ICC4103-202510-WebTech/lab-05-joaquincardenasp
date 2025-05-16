class User < ApplicationRecord
    has_many :messages, class_name: "Message", foreign_key: "user_id"
    has_many :received_chats, class_name: "Chat", foreign_key: "receiver_id"
    has_many :received_messages, through: :received_chats, source: :messages

    def chats
        Chat.where("sender_id = :id OR receiver_id = :id", id: self.id)
      end
    
      validates :email, presence: true, uniqueness: true
      validates :first_name, presence: true
      validates :last_name, presence: true
end
