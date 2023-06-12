class CreateRatingsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.references :drink, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
