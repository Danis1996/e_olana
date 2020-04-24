class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nom
      t.boolean :is_admin
      t.string :nif

      t.timestamps
    end
  end
end
