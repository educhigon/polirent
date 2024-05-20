class CreatePoliticians < ActiveRecord::Migration[7.1]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :location
      t.integer :cost
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
