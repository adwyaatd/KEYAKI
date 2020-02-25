class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :status
      t.integer :user_id
      t.integer :reply_id
      t.integer :post_id

      t.timestamps
    end
  end
end
