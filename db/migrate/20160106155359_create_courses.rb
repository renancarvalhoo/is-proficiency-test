class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :name
      t.text :description
      t.integer :status

      t.timestamps null: false
    end
  end
end
