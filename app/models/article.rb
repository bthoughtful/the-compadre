class Article < ApplicationRecord
  default_scope -> { order(created_at: :desc) } # db returns articles in descending order
  validates :title, presence: true
  validates :intro, presence: true
  validates :body, presence: true
end
