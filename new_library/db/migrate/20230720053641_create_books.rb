class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author_name
      t.text :long_description
      t.float :cost
      t.datetime :release_on
      t.integer :genre, default: 0 
      t.references :library, null: false, foreign_key: true
      t.boolean :available
      t.datetime :check_in
      t.datetime :check_out
      t.string :language

      t.timestamps
    end
  end
end
