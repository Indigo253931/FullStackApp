class StrainAttributes < ActiveRecord::Migration
  def change
  	add_column :strains, :strain_data, :string
  	add_column :strains, :pos_attributes, :string
  	add_column :strains, :neg_attributes, :string
  	add_column :strains, :medical, :string
  end
end
