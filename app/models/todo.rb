class Todo < ActiveRecord::Base
  validates :what, presence: true
end
