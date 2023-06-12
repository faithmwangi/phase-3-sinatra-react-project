class CreateDrinksTable < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :ingredients
      t.text :instructions
      t.string :category
      t.string :image_url

      t.timestamps
    end
  end
end
