class CannaViews < ActiveRecord::Migration
  def change
  	create_table(:strains) do |t|
  		t.column(:name, :string)
  		t.column(:type, :string)
  		t.column(:review, :string)
  		t.column(:rating, :integer)
  end
  end
end
