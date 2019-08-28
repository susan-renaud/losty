class AddColumnsToClaims < ActiveRecord::Migration[5.2]
  def change
    add_column :claims, :accepted, :boolean, default: false
  end
end
