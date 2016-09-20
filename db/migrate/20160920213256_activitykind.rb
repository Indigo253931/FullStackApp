class Activitykind < ActiveRecord::Migration
  def change
  	rename_column :activities, :type, :kind
  end
end
