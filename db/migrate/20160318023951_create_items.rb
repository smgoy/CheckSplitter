class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :person
      t.integer :check_id

      t.timestamps null: false
    end
  end
end
