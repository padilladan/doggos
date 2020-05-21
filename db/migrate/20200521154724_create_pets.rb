class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :first_name
      t.string :last_name
      t.string :breed
      t.integer :age
      t.integer :weight
      t.boolean :spay_neuter

      t.timestamps
    end
  end
end
