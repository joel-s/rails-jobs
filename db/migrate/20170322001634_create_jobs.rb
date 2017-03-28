class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :poster
      t.integer :category null: false
      t.integer :location null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
