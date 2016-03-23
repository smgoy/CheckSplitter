class AddTotalToChecks < ActiveRecord::Migration
  def change
    add_column :checks, :total, :float
  end
end
