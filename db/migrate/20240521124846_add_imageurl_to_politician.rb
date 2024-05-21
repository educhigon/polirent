class AddImageurlToPolitician < ActiveRecord::Migration[7.1]
  def change
    add_column :politicians, :image_url, :string
  end
end
