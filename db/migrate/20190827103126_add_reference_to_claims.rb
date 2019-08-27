class AddReferenceToClaims < ActiveRecord::Migration[5.2]
  def change
    add_reference :claims, :item, foreign_key: true
    add_reference :claims, :user, foreign_key: true
  end
end
