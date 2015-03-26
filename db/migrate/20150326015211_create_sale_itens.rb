class CreateSaleItens < ActiveRecord::Migration
	def change
		create_table :sale_itens do |t|
			t.integer :sale_id, null: false
			t.string :description, limit: 255, null: false
			t.decimal :price, precision: 13, scale: 2, null: false
			t.integer :quantity, null: false

			t.timestamps null: false
		end

		add_index :sale_itens, :sale_id
	end
end