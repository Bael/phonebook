class CreateRailways < ActiveRecord::Migration
  def change
    create_table :railways do |t|
      t.string :firstname
      t.string :secondname
      t.string :lastname
      t.string :phone
      t.string :phone2
      t.string :name

      t.timestamps
    end
  end
end
