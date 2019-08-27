class AddColumnsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :name, :string
    add_column :items, :photo, :string
    add_column :items, :description, :text
    add_column :items, :location, :string
    add_column :items, :question1, :text
    add_column :items, :question2, :text
    add_column :items, :question3, :text
    add_column :items, :claimed, :boolean, default: false
  end
end
