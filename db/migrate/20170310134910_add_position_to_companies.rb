class AddPositionToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :position, :integer
  end
end
