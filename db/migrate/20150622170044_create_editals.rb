class CreateEditals < ActiveRecord::Migration
  def change
    create_table :editals do |t|
      t.string :name
      t.date :date
      t.text :descricao

      t.timestamps null: false
    end
  end
end
