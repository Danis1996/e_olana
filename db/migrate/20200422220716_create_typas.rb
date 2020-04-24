class CreateTypas < ActiveRecord::Migration[6.0]
  def change
    create_table :typas do |t|
      t.string :titre
      t.integer :durre
      t.string :hafa
      t.boolean :vue

      t.timestamps
    end
  end
end
