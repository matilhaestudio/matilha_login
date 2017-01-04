class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :matilha_login_users, :name, :string, after: :id
  end
end
