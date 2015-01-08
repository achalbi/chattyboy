class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.references :conversation, index: true
      t.string :user_id

      t.timestamps
    end
    add_index :messages, :user_id
  end
end
