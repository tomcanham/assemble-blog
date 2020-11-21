class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  paginates_per 10

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true

  field :title, type: String
  field :body, type: String
  belongs_to :user
end
