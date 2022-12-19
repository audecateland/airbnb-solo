class AddNoteToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :note, :integer
  end
end
