class Person < ActiveRecord::Base
  
  validates :email, uniqueness: true
  validates :cpf, uniqueness: true



  has_many :addresses
  accepts_nested_attributes_for :addresses
end
