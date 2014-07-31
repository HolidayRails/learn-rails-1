class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
	   # render 'visitors/new'
	   flash.now[:notice] = 'Welcome!'
	   flash.now[:alert] = 'My birthday is soon.'
	end

end

#the new method calls a render method
#supplied by the ApplicationController parent class
# the render method searches under app/view/visitors
# for a view file named new.html.erb
# (the extension html.erb is assumed)