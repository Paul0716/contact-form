class Contact < ApplicationRecord
    validates_presence_of :title, :message=>"Title could not be empty."
    validates_presence_of :name, :message=>"Name could not be empty."
    validates_presence_of :email, :message=>"Email Address could not be empty."
    validates_presence_of :phone, :message=>"Contact phone could not be empty."
    validates_presence_of :message
end
