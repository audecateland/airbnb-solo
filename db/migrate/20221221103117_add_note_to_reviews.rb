class AddNoteToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :note, :integer
  end
end
