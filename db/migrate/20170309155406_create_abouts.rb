class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.string :title
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
