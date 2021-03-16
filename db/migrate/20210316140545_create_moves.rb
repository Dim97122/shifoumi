class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string        :title
      t.belongs_to    :game
      t.belongs_to    :player
      t.timestamps
    end
  end
end
