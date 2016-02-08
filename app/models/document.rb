class Document < ActiveRecord::Base
  validates :name, length: { maximum: 100}, presence: true
  validates :body, presence: true, length: {maximum: 1000}
  validates :url, format: {with: /(http|https):\/\/[a-zA-Z]+\.[a-zA-Z]/}
  belongs_to :user
  has_many :document_tags
  has_many :tags, through: :document_tags

  def created_by?(user)
    return false unless user
    self.user_id == user.id
  end
end
