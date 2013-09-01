class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :secondname
      t.string :lastname
      t.string :title
      t.string :workphone
      t.string :owncellphone
      t.string :workcellphone
      t.string :email
      t.string :icq
      t.string :description

      t.timestamps
    end
  end
end
