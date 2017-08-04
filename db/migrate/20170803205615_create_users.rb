class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :name
      t.string :email
      t.boolean :admin

      t.timestamps
    end
  end
end
