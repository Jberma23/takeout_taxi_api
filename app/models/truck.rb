class Truck < ApplicationRecord
    belongs_to :owner, class_name: "User", :foreign_key => "user_id"
    has_many :orders
    has_many :ratings
    has_many :reviews
    has_many :favorites
    has_many_attached :image
    has_many :locations


   
    def featured_image_url
      if self.featured_image.attachment
        self.featured_image.attachment.service_url
      end
    end
    def menu_image_url
      if self.menu_image.attachment
        self.menu_image.attachment.service_url
      end
    end

    # geocoded_by :address
    # reverse_geocoded_by :latitude, :longitude
    # after_validation :geocode, :reverse_geocode

end
