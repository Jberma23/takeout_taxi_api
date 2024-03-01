class Concise::RatingSerializer < ActiveModel::Serializer
    attributes :id, :username, :score, 
  
    def username
        @user = User.find_by(id: object.user_id).username
    end
  end
  