class Task < ApplicationRecord

  belongs_to :user
  belongs_to :genre

  has_one_attached :task_image

  validates :title, presence: true, uniqueness: true

end
