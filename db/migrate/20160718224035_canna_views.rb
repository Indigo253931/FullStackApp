class CannaViews < ActiveRecord::Migration
  def change
  	create_table(:strains) do |t|
  		t.column(:name, :string)
  		t.column(:type, :string)
  		t.column(:rating, :string )
  		t.column(:review, :string)
  end
  end

end
# Rails provides a domain-specific language 
# for managing migrations (a db schema). 

	# Migrations are stored in files 
	# which are executed against any db that AR supports using rake.

# Rails keeps track of the files committed to the db
  # and provides rollback features. 
 	# Run rails db:migrate to create the table 
  # and rails db:rollback to roll it back.

# The code above is db agnostic: 
# it will run in MySQL, PostgreSQL, Oracle and others. 