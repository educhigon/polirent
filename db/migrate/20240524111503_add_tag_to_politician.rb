class AddTagToPolitician < ActiveRecord::Migration[7.1]
  def change
    add_column :politicians, :tag, :string
  end
end
