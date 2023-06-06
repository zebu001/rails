class CreateDepoimentos < ActiveRecord::Migration[7.0]
  def change
    create_table :depoimentos do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
