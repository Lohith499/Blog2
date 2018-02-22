class User < ApplicationRecord
  validates :lname, presence:true
  validates :fname, presence:true
  validates :email, presence:true,uniqueness: {case_sensitive: false}
  validates :thumbnail, allow_blank:true,format: {with: %r{\.(gif|jpg|png)\Z}i,message: 'must be url for gif or jpg or png'}
end
