class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :location
      t.boolean :found, default: false

      t.timestamps
    end
  end
end
