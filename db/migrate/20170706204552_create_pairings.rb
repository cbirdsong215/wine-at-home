class CreatePairings < ActiveRecord::Migration[5.1]
  def change
    create_table :pairings do |t|
      t.string :name, null: false
      t.text :serving_suggestion
      t.integer :tasting_id, null: false

      t.timestamps
    end
  end
end
