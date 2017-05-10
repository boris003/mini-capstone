class CarsController < ApplicationController

	def index
		@cars = Car.all
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end

	def create
		@new_car = Car.create(
			make: params[:make],
			model: params[:model],
			year: params[:year], 
			engine: params[:engine], 
			color: params[:color], 
			price: params[:price]
			)
		flash[:success] = "New car is added!"
		# render "create.html.erb"
		redirect_to "/cars/#{@new_car.id}"
	end

	def show
		car_id = params[:id]
		@car = Car.find(car_id)
		render "show.html.erb"
	end

	def edit
		@car = Car.find(params[:id])
		render "edit.html.erb"
	end

	def update
		@car = Car.find(params[:id])
		@car.update(
			make: params[:make],
			model: params[:model],
			year: params[:year], 
			engine: params[:engine], 
			color: params[:color], 
			price: params[:price]
			)
		flash[:info] = "Information about #{@car.make} #{@car.model} is updated!"
		# render "update.html.erb"
		redirect_to "/cars/#{@car.id}"
	end

	def destroy
		car = Car.find(params[:id])
		car.destroy
		# render "destroy.html.erb"
		flash[:danger] = "#{car.make} #{car.model} is deleted!"
		redirect_to "/cars"
	end

end
