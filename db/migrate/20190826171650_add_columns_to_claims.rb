class AddColumnsToClaims < ActiveRecord::Migration[5.2]
  def change
    add_column :claims, :user_id, :string
    add_column :claims, :item_id, :string
    add_column :claims, :answer1, :text
    add_column :claims, :answer2, :text
    add_column :claims, :answer3, :text
    add_column :claims, :reward, :string
  end
end
