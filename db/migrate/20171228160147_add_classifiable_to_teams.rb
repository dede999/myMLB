class AddClassifiableToTeams < ActiveRecord::Migration[5.0]
  def up
    change_table :teams do |t|
      t.integer :avg
      t.integer :h_avg
      t.integer :a_avg
      t.integer :diff
    end
    Team.update_all ["avg = ?", 0]
    Team.update_all ["h_avg = ?", 0]
    Team.update_all ["a_avg = ?", 0]
    Team.update_all ["diff = ?", 0]
  end

  def down
    remove_column :teams, :avg
    remove_column :teams, :h_avg
    remove_column :teams, :a_avg
    remove_column :teams, :diff
  end
end
