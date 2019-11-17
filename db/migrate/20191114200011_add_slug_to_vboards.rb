class AddSlugToVboards < ActiveRecord::Migration[5.2]
  def change
    add_column :vboards, :slug, :string
    add_index :vboards, :slug, unique: true
  end
end
