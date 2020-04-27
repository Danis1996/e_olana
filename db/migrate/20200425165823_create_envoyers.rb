class CreateEnvoyers < ActiveRecord::Migration[6.0]
  def change
    create_table :envoyers do |t|
      t.belongs_to :user_reclamation, index: true
      t.string :titre
      t.string :contenu

      t.timestamps
    end
  end
end
