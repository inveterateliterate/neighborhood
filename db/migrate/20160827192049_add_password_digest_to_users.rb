class AddPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def change
  end

  add_column :users, :password_digest, :string
  remove_column :users, :password
end
