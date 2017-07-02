class CreateTastings < ActiveRecord::Migration[5.1]
  def change
    create_table :tastings do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
