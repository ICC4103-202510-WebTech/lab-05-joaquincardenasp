class AddForeignKeyToChatsSender < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :chats, :users, column: :sender_id, on_delete: :cascade
  end
end
