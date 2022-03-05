class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, :unique => true
      t.string :password_digest
      t.string :remember_digest

      t.timestamps
    end
    add_index :users, :email
    #Ex:- add_index("admin_users", "username")
  end
end
