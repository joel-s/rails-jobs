class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :poster
      t.integer :category
      t.integer :location
      t.text :description

      t.timestamps null: false
    end
  end
end
