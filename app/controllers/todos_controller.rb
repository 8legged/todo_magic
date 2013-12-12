class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todos_url, notice: 'Todo was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_url
  end

  private
  def todo_params
    params.require(:todo).permit(:what, :completed_at)
  end
end
