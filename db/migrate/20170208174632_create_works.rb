class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.column :name, :string
      t.column :image, :string
      t.column :media, :string
      t.column :published, :string
      t.column :rating, :integer
      t.column :content, :string
      t.timestamps
    end
  end
end
