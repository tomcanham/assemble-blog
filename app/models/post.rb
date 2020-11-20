class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  paginates_per 10

  field :title, type: String
  field :body, type: String
  belongs_to :user
end
