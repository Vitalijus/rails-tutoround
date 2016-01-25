class DropClaimsTable < ActiveRecord::Migration
  def change
  	drop_table :claims
  end
end
