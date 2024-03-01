class RatingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :truck_id, :score
end
