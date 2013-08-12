class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :title
      t.integer :capacity
      t.boolean :projector
      t.boolean :sound
      t.boolean :mic

      t.timestamps
    end
  end
end
