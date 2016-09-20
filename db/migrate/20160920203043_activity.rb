class Activity < ActiveRecord::Migration
  def change
  	add_reference :strains, :activity
  end
end
