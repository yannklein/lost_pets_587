class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.date :lost_on
      t.string :location

      t.timestamps
    end
  end
end
