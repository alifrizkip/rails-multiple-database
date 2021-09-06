class Legacy::TodosController < ApplicationController
  before_action :set_legacy_todo, only: %i[ show edit update destroy ]

  # GET /legacy/todos or /legacy/todos.json
  def index
    @legacy_todos = Legacy::Todo.all
  end

  # GET /legacy/todos/1 or /legacy/todos/1.json
  def show
  end

  # GET /legacy/todos/new
  def new
    @legacy_todo = Legacy::Todo.new
  end

  # GET /legacy/todos/1/edit
  def edit
  end

  # POST /legacy/todos or /legacy/todos.json
  def create
    @legacy_todo = Legacy::Todo.new(legacy_todo_params)

    respond_to do |format|
      if @legacy_todo.save
        format.html { redirect_to @legacy_todo, notice: "Todo was successfully created." }
        format.json { render :show, status: :created, location: @legacy_todo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @legacy_todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legacy/todos/1 or /legacy/todos/1.json
  def update
    respond_to do |format|
      if @legacy_todo.update(legacy_todo_params)
        format.html { redirect_to @legacy_todo, notice: "Todo was successfully updated." }
        format.json { render :show, status: :ok, location: @legacy_todo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @legacy_todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legacy/todos/1 or /legacy/todos/1.json
  def destroy
    @legacy_todo.destroy
    respond_to do |format|
      format.html { redirect_to legacy_todos_url, notice: "Todo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legacy_todo
      @legacy_todo = Legacy::Todo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legacy_todo_params
      params.require(:legacy_todo).permit(:name, :detail, :is_done)
    end
end
