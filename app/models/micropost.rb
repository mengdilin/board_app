class Micropost < ActiveRecord::Base
    validates :username, presence:true
    validates :content, presence:true
end
