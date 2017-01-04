class CreateMatilhaLoginIdentities < ActiveRecord::Migration
  def change
    create_table :matilha_login_identities do |t|
      t.references :matilha_login_user, index: true, foreign_key: true
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end
  end
end
