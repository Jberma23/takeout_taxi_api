class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :truck_id, :content, :username

  def username
    @user = User.find_by(id: object.user_id).username
  end
end
