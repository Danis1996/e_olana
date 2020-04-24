class CreateFichiers < ActiveRecord::Migration[6.0]
  def change
    create_table :fichiers do |t|
      t.belongs_to :typa, index: true
      t.string :titre
      t.string :file
      t.text :description

      t.timestamps
    end
  end
end
