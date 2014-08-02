class VisitorsController < ApplicationController

	def new
		@visitor = Visitor.new # <--- render 'visitors/new'
	end

	def create
		@visitor = Visitor.new(secure_params)
		if @visitor.valid?
			@visitor.subscribe
			flash[:notice] = "Signed up #{@visitor.email}."
			redirect_to_root_path
		else
			render :new
		end
	end

	private

	def secure_params
		params.require(:visitor).permit(:email)
	end

end

#the new method calls a render method
#supplied by the ApplicationController parent class
# the render method searches under app/view/visitors
# for a view file named new.html.erb
# (the extension html.erb is assumed)