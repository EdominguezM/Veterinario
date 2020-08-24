class CreatePetHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_histories do |t|
      t.integer :weigth
      t.integer :height
      t.string :diagnosis
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
