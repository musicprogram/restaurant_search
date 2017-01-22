class CreateZones < ActiveRecord::Migration[5.0]
  def change
    create_table :zones do |t|
      t.string :name
      t.string :telefono
      t.string :direccion
      t.string :horario
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
