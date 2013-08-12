class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.boolean :projector
      t.boolean :sound
      t.boolean :mic
      t.integer :capacity
      t.float :duration
      t.float :cycle
      t.float :frequency
      t.integer :section_size
      t.string :kind
      t.boolean :join_class
      t.string :form
      t.boolean :video_makeup
      t.float :make_value
      t.text :remark

      t.timestamps
    end
  end
end
