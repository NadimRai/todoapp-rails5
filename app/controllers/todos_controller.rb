class TodosController < ApplicationController
	def index
		
	end

	def new
  		@todo = Todo.new
	end

	def create
  		@todo = Todo.create(todo_params)
  		if @todo.save
    		redirect_to todo_path(@todo)
  		else
    		render 'new'
  		end    
	end 

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
