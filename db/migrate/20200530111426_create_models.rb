class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.text :name
      t.integer :year
      t.references :brand, null: false, foreign_key: true
    end
  end
end
