class AddForeignKeyToMessagesChat < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :messages, :chats, column: :chat_id, on_delete: :cascade
  end
end
