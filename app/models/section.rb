class Section < ApplicationRecord
  belongs_to :course
  has_many :lessons

  validates :title, presence: true

  include RankedModel
  ranks :row_order, with_same: :course_id
end