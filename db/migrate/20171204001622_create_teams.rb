class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :abr
      t.integer :win
      t.integer :loss
      t.integer :hw
      t.integer :hl
      t.integer :aw
      t.integer :al
      t.integer :pf
      t.integer :pa
      t.integer :division
      t.integer :playoffs
      t.integer :pennants
      t.integer :championships
      t.string :div
      t.string :league
      t.timestamps
    end
  end
end
