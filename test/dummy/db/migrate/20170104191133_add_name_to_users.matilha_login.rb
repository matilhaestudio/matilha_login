# This migration comes from matilha_login (originally 20170104190112)
class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :matilha_login_users, :name, :string, after: :id
  end
end
