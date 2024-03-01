class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :role, :email
  has_many :trucks, serializer: Concise::TruckSerializer
  # has_many :ratings, serializer: Truck::TruckRatingSerializer
  # has_many :reviews, serializer: Truck::TruckReviewSerializer
  # has_many :favorites, serializer: Truck::TruckFavoriteSerializer
end
