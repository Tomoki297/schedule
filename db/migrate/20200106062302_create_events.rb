class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :backgroundColor
      t.boolean :allDay
      t.datetime :start
      t.datetime :end
      t.timestamps
    end
  end
end
