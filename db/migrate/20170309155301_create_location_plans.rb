class CreateLocationPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :location_plans do |t|
      t.string :title
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
