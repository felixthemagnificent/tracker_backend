class CreateTestcontrollers < ActiveRecord::Migration
  def change
    create_table :testcontrollers do |t|
      t.string :a
      t.string :b
      t.string :c

      t.timestamps null: false
    end
  end
end
