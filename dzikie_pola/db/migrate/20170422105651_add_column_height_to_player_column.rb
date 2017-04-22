class AddColumnHeightToPlayerColumn < ActiveRecord::Migration[5.0]
  def change
add_column :players, :height, :integer

  end
end
