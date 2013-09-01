class Employee < ActiveRecord::Base
  attr_accessible :description, :email, :firstname, :icq, :lastname, :owncellphone, :secondname, :title, :workcellphone, :workphone
end
