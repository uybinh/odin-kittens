class Kitten < ApplicationRecord

  def as_json(options = {})
    super(only: [:id, :name, :cuteness, :softness])
  end
end
