class CreateDependences < ActiveRecord::Migration[5.0]
  def change
    create_table :dependences do |t|
      t.references :restaurant, foreign_key: true
      t.references :city, foreign_key: true
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
