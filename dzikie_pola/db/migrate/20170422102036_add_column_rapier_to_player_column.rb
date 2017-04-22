class AddColumnRapierToPlayerColumn < ActiveRecord::Migration[5.0]
  def change

add_column :players, :rapier, :integer

  end
end
