class CreateSignets < ActiveRecord::Migration[7.0]
  def change
    create_table :signets do |t|
      t.string :commentaire
      t.references :film, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
