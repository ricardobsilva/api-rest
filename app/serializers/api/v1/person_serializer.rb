class Api::V1::PersonSerializer < ActiveModel::Serializer
  attributes :id ,:name , :cpf , :ip_person, :email, :doer , :buyer
end
