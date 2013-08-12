class DropInsurances < ActiveRecord::Migration
  def up
  	drop_table :insurances
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
