class AdminUser < ActiveRecord::Base
	
	has_and_belongs_to_many :pages
	# To configure a different table name:
	# self.table_name = "admin_users"
	
# 	# short way
# 	attr_accessor :first_name
# 	
# 	# long way
# 	def last_name
# 		@last_name
# 	end
# 	
# 	def last_name=(value)
# 		@last_name = value
# 	end
	
end
