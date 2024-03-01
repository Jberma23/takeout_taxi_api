class Concise::ReviewSerializer < ActiveModel::Serializer
    attributes :id, :username, :content


    def username
        @user = User.find_by(id: object.user_id).username
    end
end