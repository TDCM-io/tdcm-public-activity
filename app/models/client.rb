class Client < ApplicationRecord

  include PublicActivity::Model
  tracked owner: proc { |controller, model| controller.current_user }

  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity'

  def to_s
    [last_name, first_name].join(' ')
  end

end
