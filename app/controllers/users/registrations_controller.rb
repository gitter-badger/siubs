class Users::RegistrationsController < Devise::RegistrationsController

	# DELETE /resource
	def destroy
		@user = User.find_by_id(resource.id)
		@user.user_active = false
		@user.save
		render "home/inactive"
	end

end
