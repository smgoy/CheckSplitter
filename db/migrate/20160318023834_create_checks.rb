class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.float :tax
      t.float :tip
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
