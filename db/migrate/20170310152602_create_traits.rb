class CreateTraits < ActiveRecord::Migration[5.0]
  def change
    create_table :traits do |t|
      t.string :title
      t.string :key
      t.integer :order
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
