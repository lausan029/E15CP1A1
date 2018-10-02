class User < ApplicationRecord
	has_many :histories

	 def to_s
  	name
  end
end
