class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :nome
      t.date :ano
      t.integer :episodios
      t.text :categoria

      t.timestamps
    end
  end
end
