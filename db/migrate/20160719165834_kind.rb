class Kind < ActiveRecord::Migration
  def change
  	rename_column :strains, :type, :kind
  end
end
# Had to rename column 'type' to 'kind' due to Rails