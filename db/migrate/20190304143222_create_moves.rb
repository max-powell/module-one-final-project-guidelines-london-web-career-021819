class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :power
      t.integer:accuracy
      t.integer :pp
      t.string :effective_against
      t.string :not_effective_against
    end
  end
end
