class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :body, presence: true
  validates :topic_id, presence: true
  belongs_to :topic, optional: true
  has_many :comments, dependent: :destroy
end
