# Model Naming Convention: 
	# Singular, capitalize first letter of each word
class Strain < ActiveRecord::Base
 	belongs_to :activities
 end
# Strain model maps to the strains table in the db. 
# You have the ability to map the columns of each row in that table 
# with the attributes of the instances of the Strain model. 

# ApplicationRecord inherits from ActiveRecord::Base, 
# which defines a number of methods. 

	# In order to follow a different naming convention or use Rails app 
	# with a legacy database, override the default conventions by:

		# Using the ActiveRecord::Base.table_name= method 
		# to specify the table name that should be used
		# If you do, you  must manually define the class name hosting the fixtures (my_products.yml) 
		# using the set_fixture_class method in your test definition

		#Overriding the column that should be used as the table's primary key 
		# using the ActiveRecord::Base.primary_key= method.

