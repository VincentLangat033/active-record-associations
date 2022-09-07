class AddAttributesToAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :password_digest, :string
    add_column :authors, :username, :string
    add_column :authors, :email, :string
  end
end
