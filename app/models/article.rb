class Article < ApplicationRecord
  has_many :comments #, class_name: "commet" #, foreign_key: "reference_id"

  validates :title, presence: true, length: { maximum: 10 }
  validates :body, presence: true, length: { minimum: 10 }
end
