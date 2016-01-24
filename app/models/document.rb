class Document < ActiveRecord::Base
  validates :name, length: { maximum: 100}, presence: true
  belongs_to :user
  #has_many :document_tags
  #has_many :tags, through: :document_tags
  def created_by?(user)
    return false unless user
    self.user_id == user.id
  end
end
