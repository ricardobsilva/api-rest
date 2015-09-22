class Person < ActiveRecord::Base
  
  validates :email, :cpf, uniqueness: true , presence: true
  



  has_many :addresses
  accepts_nested_attributes_for :addresses
end
