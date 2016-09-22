class Playlist < ActiveRecord::Migration
  def change
  		create_table(:playlist) do |t|
  		t.column(:playlist, :string)
  		t.column(:artist, :string)
  		t.column(:album, :string)
  		t.column(:song, :string)
  end
end
end
