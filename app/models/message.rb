class Message < ApplicationRecord
    belongs_to :user
    belongs_to :chat
    validates :body, presence: true
    validate :sender_must_be_in_chat

def sender_must_be_in_chat
  return unless chat && user

  unless [chat.sender_id, chat.receiver_id].include?(user_id)
    errors.add(:user_id, "must be either the sender or receiver in the chat")
  end
end
end
