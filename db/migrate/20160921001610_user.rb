class User < ActiveRecord::Migration
  def change
  		create_table(:users) do |t|
  		t.column(:username, :string)
  		t.column(:email, :string)
  		t.column(:password, :string )
  		t.column(:location, :string)
  		t.column(:avatar, :string)
  end
end
end
