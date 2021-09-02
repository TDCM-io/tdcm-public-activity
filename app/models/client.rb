class Client < ApplicationRecord

  def to_s
    [last_name, first_name].join(' ')
  end

end
