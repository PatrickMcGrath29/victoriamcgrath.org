class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date_time
      t.string :location
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
