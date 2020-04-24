class CreateDeclars < ActiveRecord::Migration[6.0]
  def change
    create_table :declars do |t|
      t.belongs_to :user, index: true
      t.belongs_to :typa, index: true
      t.string :reponse

      t.timestamps
    end
  end
end
