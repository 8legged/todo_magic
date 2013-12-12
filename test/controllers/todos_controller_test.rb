require "test_helper"

class TodosControllerTest < ActionController::TestCase

  before do
    @todo = todos(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:todos)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Todo.count') do
      post :create, todo: {  }
    end

    assert_redirected_to todo_path(assigns(:todo))
  end

  def test_show
    get :show, id: @todo
    assert_response :success
  end

  def test_edit
    get :edit, id: @todo
    assert_response :success
  end

  def test_update
    put :update, id: @todo, todo: {  }
    assert_redirected_to todo_path(assigns(:todo))
  end

  def test_destroy
    assert_difference('Todo.count', -1) do
      delete :destroy, id: @todo
    end

    assert_redirected_to todos_path
  end
end
