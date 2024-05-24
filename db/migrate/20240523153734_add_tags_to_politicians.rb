class AddTagsToPoliticians < ActiveRecord::Migration[7.1]
  def change
    add_column :politicians, :tags, :string
  end
end
