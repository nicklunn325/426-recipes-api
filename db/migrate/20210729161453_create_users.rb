class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :motto
      t.string :profile_picture
      t.string :website

      t.timestamps
    end
  end
end
