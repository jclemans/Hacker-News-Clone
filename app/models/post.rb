class Post < ActiveRecord::Base
  validates :link, presence: true
  validates :link, uniqueness: true
end
