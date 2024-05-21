class AddImageurlToPolitician < ActiveRecord::Migration[7.1]
  def change
    add_column :polticians, :image_url, :string
  end
end
