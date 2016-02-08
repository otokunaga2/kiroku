class Tag < ActiveRecord::Base
  #belongs_to :document
  has_many :document_tags
  has_many :documents, through: :document_tags
end
