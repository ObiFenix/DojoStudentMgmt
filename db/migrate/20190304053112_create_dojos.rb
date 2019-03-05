class CreateDojos < ActiveRecord::Migration[5.2]
  def change
    create_table :dojos do |t|
      t.string :branch
      t.string :street
      t.string :city
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
