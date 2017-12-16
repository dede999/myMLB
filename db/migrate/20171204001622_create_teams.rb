class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :abr
      t.integer :win
      t.integer :loss
      t.decimal :avg, precision: 3
      t.integer :hw
      t.integer :hl
      t.integer :aw
      t.integer :al
      t.integer :pf
      t.integer :pa
      t.integer :diff
      t.integer :division
      t.integer :playoffs
      t.integer :pennants
      t.integer :championships

      t.timestamps
    end
  end
end
