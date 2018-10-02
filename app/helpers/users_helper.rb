module UsersHelper
	def logged? 
		session[:user_id].present? ? true : false
	end

	def current_user
		User.find_by(id: session[:user_id])
	end
end
