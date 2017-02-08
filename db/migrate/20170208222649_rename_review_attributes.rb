class RenameReviewAttributes < ActiveRecord::Migration[5.0]
  def change
    rename_column(:reviews, :name, :title)
    add_column(:reviews, :username, :string)
  end
end
