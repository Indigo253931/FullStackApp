class Activitytable < ActiveRecord::Migration
  def change
  	create_table(:activities) do |t|
  		t.column(:name, :string)
  		t.column(:type, :string)
  		t.column(:media, :string )
  	end
  end
end
