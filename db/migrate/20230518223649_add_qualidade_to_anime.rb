class AddQualidadeToAnime < ActiveRecord::Migration[7.0]
  def change
    add_reference :animes, :qualidade, null: false, foreign_key: true
  end
end
