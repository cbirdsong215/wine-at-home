class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name, null: false
      t.string :appellation, null: false
      t.string :varietal, null: false
      t.string :year, null: false
      t.integer :tasting_id, null: false
      t.string :photo

      t.timestamps
    end
  end
end
