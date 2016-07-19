class CannaViews < ActiveRecord::Migration
  def change
  	create_table(:strains) do |t|
  		t.column(:name, :string)
  		t.column(:type, :string)
  		t.column(:rating, :string )
  		t.column(:review, :string)
  end
  end

#rename_column :strains, :type, :kind
end
