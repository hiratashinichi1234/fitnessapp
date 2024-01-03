class CreateScadules < ActiveRecord::Migration[7.1]
  def change
    create_table :scadules do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end