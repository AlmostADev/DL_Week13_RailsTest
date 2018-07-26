class TodosController < ApplicationController

    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(params_todo)
        @todo.save
        redirect_to todos_path
    end

    def show
        @todo = Todo.find(params[:id])
        if @todo.completed
            @status = 'Complete'
        else
            @status = 'Not completed'
        end
    end

    def edit
        @todo = Todo.find(params[:id])
    end

    private
    def params_todo
        params.require(:todo).permit(:description, :completed)
    end
end
