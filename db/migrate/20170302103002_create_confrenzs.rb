class CreateConfrenzs < ActiveRecord::Migration[5.0]
  def change
    create_table :confrenzs do |t|
      t.string :titile
      t.text :content
      t.date :start
      t.string :block
      t.time :time_block

      t.timestamps
    end
  end
end
