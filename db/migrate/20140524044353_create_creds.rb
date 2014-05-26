class CreateCreds < ActiveRecord::Migration
  def change
    create_table :creds do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
