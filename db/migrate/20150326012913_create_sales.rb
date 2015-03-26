class CreateSales < ActiveRecord::Migration
	def change
		create_table :sales do |t|
			t.string :customer_name
			t.string :merchant_address
			t.string :merchant_name

			t.timestamps null: false
		end
	end
end
