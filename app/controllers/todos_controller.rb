class TodosController < ApplicationController
	def index
  		@todos = Todo.all
	end

	def new
  		@todo = Todo.new
	end

	def create
  		@todo = Todo.create(todo_params)
  		if @todo.save
  			flash[:notice] = "Todo was created successfully"
    		redirect_to todo_path(@todo)
  		else
    		render 'new'
  		end    
	end 

	def show
		@todo = Todo.find(params[:id])

	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update
  			flash[:notice] = "Todo was updated successfully"
    		redirect_to todo_path(@todo)
  		else
    		render 'new'
  		end    
	end

	def destroy
	end

	private

	def todo_params
  		params.require(:todo).permit(:name, :description)
	end

end
