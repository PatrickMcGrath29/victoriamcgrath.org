class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date_time
      t.string :location
      t.text :description
      t.text :short_description
      t.string :primary_image
      t.string :action_link
      t.array :images
      t.boolean :is_featured

      t.timestamps
    end
  end
end
