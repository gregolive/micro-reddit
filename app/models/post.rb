class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 4..40 }
  validates :url, presence: true, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
