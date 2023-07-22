class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
