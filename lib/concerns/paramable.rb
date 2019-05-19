module Paramable
  module InstantPoop
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end
