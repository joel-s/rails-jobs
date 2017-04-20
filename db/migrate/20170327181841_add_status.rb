class AddStatus < ActiveRecord::Migration
  def change
    change_table :jobs do |t|
      t.integer :statusval
    end
  end
end
