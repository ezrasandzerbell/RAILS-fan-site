class ChangeTypeAttributeToMedia < ActiveRecord::Migration[5.0]
  def change
    rename_column(:works, :type, :media)
  end
end
