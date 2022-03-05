class CreateModals < ActiveRecord::Migration[7.0]
  def change
    create_table :modals do |t|
      t.string :User
      t.string :name
      t.string :email, :unique => true
      t.string :password_digest
      t.string :remember_digest

      t.timestamps
    end
    add_index :users, :email
  end
end
