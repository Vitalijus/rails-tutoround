class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :message
      t.string :email
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
