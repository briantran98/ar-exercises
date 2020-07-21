class Store < ActiveRecord::Base
	has_many :employees

	validates :name, length: {minimum: 3}
	validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validate :inventory_check, on: :create

	def inventory_check
		if !mens_apparel && !womens_apparel
			errors.add(:mens_apparel, "is false")
			errors.add(:womens_apparel, "is also false")
		end
	end
end
