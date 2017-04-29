class CreateFighters < ActiveRecord::Migration[5.0]
  def change
    create_table :fighters do |t|
      t.integer :player_id

      t.timestamps
    end
  end
end
