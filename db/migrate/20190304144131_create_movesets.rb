class CreateMovesets < ActiveRecord::Migration[5.0]
  def change
    create_table :movesets do |t|
      t.integer :pokemon_id
      t.integer :move_id
    end
  end
end
