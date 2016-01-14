class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
