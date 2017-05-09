class Car < ApplicationRecord
	default_scope { order('id ASC') }
end
