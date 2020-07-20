class Store < ActiveRecord::Base
	has_many :employees

	validates :name, length: {minimum: 3}
	validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validate :inventory_check, on: :create

	def inventory_check
		if !mens_apparel && !womens_apparel
			errors.add("Mens and womens apparel can't be false")
		end
	end
end
