
class Document < ApplicationRecord

  Doc_Types = ["Marksheet", "Photo_ID","Personal_ID","Address Proof","Others"].freeze

  has_one_attached :doc_upload

  belongs_to :employee, foreign_key: :employee_id
  # The model name for belongs_to must be singular

  validates :name, :doc_type, presence: true
end