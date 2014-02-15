class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :duration
      t.integer :monthly_value
      t.integer :shipping_value

      t.timestamps
    end
  end
end
