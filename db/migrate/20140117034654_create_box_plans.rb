class CreateBoxPlans < ActiveRecord::Migration
  def change
    create_table :box_plans do |t|
      t.integer :box_id
      t.integer :plan_id
      t.date :start_day
      t.date :end_day

      t.timestamps
    end
  end
end
