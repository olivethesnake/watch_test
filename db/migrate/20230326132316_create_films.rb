class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :titre
      t.text :apercu
      t.string :url_affiche
      t.float :note

      t.timestamps
    end
    add_index :films, :titre, unique: true
  end
end
