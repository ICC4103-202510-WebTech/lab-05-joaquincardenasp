class AddForeignKeyToMessages < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :messages, :users, column: :user_id, on_delete: :cascade
  end
end
