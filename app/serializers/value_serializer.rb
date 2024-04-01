class ValueSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :value, :image_id
end
