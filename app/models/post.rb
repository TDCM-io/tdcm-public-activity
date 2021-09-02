class Post < ApplicationRecord
  validates :title, presence: true

  include PublicActivity::Model
  tracked owner: proc { |controller, model| controller.current_user }

  def to_s
    title
  end
end
