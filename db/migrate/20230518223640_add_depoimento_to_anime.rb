class AddDepoimentoToAnime < ActiveRecord::Migration[7.0]
  def change
    add_reference :animes, :depoimento, null: false, foreign_key: true
  end
end
