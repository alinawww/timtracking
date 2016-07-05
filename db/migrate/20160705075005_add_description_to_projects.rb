class AddDescriptionToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :description, :string
    add_column :projects, :text, :string
  end
end
