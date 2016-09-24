class Playlistreference < ActiveRecord::Migration
  def change
  	add_reference :users, :playlist
  end
end
