class AddIndexes < ActiveRecord::Migration[8.0]
  def change
    # Add indexes to the foreign key columns
    add_index :chats, :sender_id
    add_index :chats, :receiver_id
    add_index :messages, :chat_id
    add_index :messages, :user_id
  end
end
