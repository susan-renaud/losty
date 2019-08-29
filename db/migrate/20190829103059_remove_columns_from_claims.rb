class RemoveColumnsFromClaims < ActiveRecord::Migration[5.2]
  def change
    add_column :claims, :accepted, :string, default: "pending"
  end
end
