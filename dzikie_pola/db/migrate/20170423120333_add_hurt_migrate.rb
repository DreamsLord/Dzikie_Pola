class AddHurtMigrate < ActiveRecord::Migration[5.0]
	def change
		add_column :players, :light, :integer
		add_column :players, :serious, :integer
		add_column :players, :heavy, :integer
		add_column :players, :harsh, :integer
		add_column :players, :death, :integer
	end
end
