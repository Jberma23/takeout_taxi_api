class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :truck_id
end
