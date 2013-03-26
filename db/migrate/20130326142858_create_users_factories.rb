class CreateUsersFactories < ActiveRecord::Migration
  def change
    create_table :users_factories do |t|
      t.string :email
      t.string :pass

      t.timestamps
    end
  end
end
