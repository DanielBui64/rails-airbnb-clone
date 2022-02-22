class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :make_model_year
      t.string :type
      t.string :location
      t.integer :price_per_day
      t.text :description
      t.integer :capacity
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
