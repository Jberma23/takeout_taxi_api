class TruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :url, :review_count, :latitude, :longitude, :price, :address

  belongs_to :owner, class_name: "User", :foreign_key => "user_id"
  
  has_many :ratings, serializer: Concise::RatingSerializer
  has_many :reviews, serializer: Concise::ReviewSerializer
  has_many :favorites, serializer: Concise::FavoriteSerializer
end