class Post < ActiveRecord::Base
  validates :link, presence: true
  validates :link, uniqueness: true
  validates :link, :format => URI::regexp(%w(http https))
  has_many :votes
end
