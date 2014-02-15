class CreateBoxStatuses < ActiveRecord::Migration
  def change
    create_table :box_statuses do |t|
      t.integer :box_id
      t.integer :status_id

      t.timestamps
    end
  end
end
