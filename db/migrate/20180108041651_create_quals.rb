class CreateQuals < ActiveRecord::Migration[5.1]
  def change
    create_table :quals do |t|
      t.string :name
      t.string :difficulty
      t.integer :passrate
      t.string :acquisition

      t.timestamps
    end
  end
end
