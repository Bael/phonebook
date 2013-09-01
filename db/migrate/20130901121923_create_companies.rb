class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
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
      t.string :reception
      t.string :fax
      t.string :name
      t.string :contract
      t.string :okpo
      t.string :scancontract
      t.string :postaddress
      t.string :legaladdress

      t.timestamps
    end
  end
end
