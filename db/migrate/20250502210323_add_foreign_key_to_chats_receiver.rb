class AddForeignKeyToChatsReceiver < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :chats, :users, column: :receiver_id, on_delete: :cascade
  end
end
