class EditColumnToUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :total_deposit, :integer, default: 0
  end
end
