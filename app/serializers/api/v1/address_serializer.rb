class Api::V1::AddressSerializer < ActiveModel::Serializer
  attributes :id, :patio, :district, :number, :zip_code
end
