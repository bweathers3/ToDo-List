class List < ActiveRecord::Base

  belongs_to :user
  has_many :items, dependent: :destroy

  before_save { self.permission ||= :viewable }

  validates :permission, inclusion: { in: %w(viewable open personal), message: "%{permission} is not a valid permission level for your ToDo List." }, presence: true

  enum permission: [:viewable, :open, :personal]

end
