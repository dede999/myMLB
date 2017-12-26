class AddHappenedToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :happened, :boolean
  end
end
