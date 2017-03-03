class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.time :hour
      t.references :confrenz, foreign_key: true

      t.timestamps
    end
  end
end
