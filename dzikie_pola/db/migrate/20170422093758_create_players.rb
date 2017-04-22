class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.string :type
      t.string :nation
      t.integer :age
      t.integer :weight
      t.string :faith
      t.string :faith_in_the_magic
      t.string :courage
      t.string :devotion
      t.string :amorous
      t.string :honour
      t.string :law_and_order
      t.string :wealth
      t.string :reputation
      t.integer :strong
      t.integer :ability
      t.integer :sense
      t.integer :wisdom
      t.integer :fancy
      t.integer :head
      t.integer :fortune
      t.integer :initiative
      t.integer :hit
      t.integer :stout
      t.integer :sabre
      t.integer :matchlock
      t.integer :spear

      t.timestamps
    end
  end
end
