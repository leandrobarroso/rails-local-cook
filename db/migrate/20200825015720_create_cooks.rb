class CreateCooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cooks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.text :service
      t.float :price

      t.timestamps
    end
  end
end
