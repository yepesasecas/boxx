class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :photo_small_url
      t.string :photo_big_url
      t.integer :box_id

      t.timestamps
    end
  end
end
