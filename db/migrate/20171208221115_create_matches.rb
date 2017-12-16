class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.text :away
      t.integer :a_score
      t.text :home
      t.integer :h_score
      t.integer :week

      t.timestamps
    end
  end
end
