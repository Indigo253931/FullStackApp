class Media < ActiveRecord::Migration
  def change
  	add_column :strains, :media, :string
  end
end
