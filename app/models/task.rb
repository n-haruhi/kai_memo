class Task < ApplicationRecord

  belongs_to :user

  has_one_attached :task_image

end
