class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image_name
      t.string :password_digest
      t.text :text

      t.timestamps
    end
  end
end
