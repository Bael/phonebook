class Company < ActiveRecord::Base
  attr_accessible :contract, :description, :email, :fax, :firstname, :icq, :lastname, :legaladdress, :name, :okpo, :owncellphone, :postaddress, :reception, :scancontract, :secondname, :title, :workcellphone, :workphone
end
