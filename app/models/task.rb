class Task < ApplicationRecord

  belongs_to :user
  belongs_to :genre

  has_one_attached :task_image

  validates :title, presence: true, uniqueness: true

  def get_task_image
    (task_image.attached?)? task_image: 'no_image.jpg'
  end

end
