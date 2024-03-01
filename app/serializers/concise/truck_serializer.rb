class Concise::TruckSerializer < ActiveModel::Serializer
    attributes :id, :name, :image_url, :url, :review_count, :latitude, :longitude, :price, :address
end
  