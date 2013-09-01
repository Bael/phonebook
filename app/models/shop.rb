class Shop < ActiveRecord::Base
  belongs_to :railway
  attr_accessible :contract, :description, :email, :fax, :firstname, :icq, :lastname, :legaladdress, :name, :okpo, :owncellphone, :postaddress, :reception, :scancontract, :secondname, :station, :tgnl, :title, :workcellphone, :workphone
end
