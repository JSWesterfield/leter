class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /todos
    def index
        @todos = Todo.all 
        json_response(@todos)
    end

    # POST /todos
    def create
        @todo = Todo.create!(todo_params)
        json_response(@todo, :created)
    end

    # GET /todos/:id
    def show
        json_response(@todo)
    end

    # DELETE /todos/:id
    def destroy
        @todo.destroy
        head :no_content
    end

    private


    def todo_params
        # Whitelist params
        params.permit(:title, :create_by)
    end

    def set_todo
        @todo = Todo.find(params[:id])
    end
    
end
