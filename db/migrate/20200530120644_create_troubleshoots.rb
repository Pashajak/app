class CreateTroubleshoots < ActiveRecord::Migration[6.0]
  def change
    create_table :troubleshoots do |t|
      t.references :model, null: false, foreign_key: true

      t.text :code
      t.text :solution
    end
  end
end
