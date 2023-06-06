class CreateQualidades < ActiveRecord::Migration[7.0]
  def change
    create_table :qualidades do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
