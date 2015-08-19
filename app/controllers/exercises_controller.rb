class ExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @exercises = Exercise.all
  end

  def show
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)

    if @exercise.save
      redirect_to exercises_url, :notice => "Exercise created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @exercise.update_attributes(exercise_params)
    # @exercise.name = params[:name]
    # @exercise.reps = params[:reps]
    # @exercise.sets = params[:sets]
    # @exercise.description = params[:description]
    # @exercise.muscle_group_id = params[:muscle_group_id]
    # @exercise.difficulty_id = params[:difficulty_id]

    if @exercise.save
      redirect_to exercise_url(@exercise.id), :notice => "Exercise updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @exercise.destroy
    redirect_to exercises_url, :notice => "Exercise deleted."
  end

    private

    def exercise_params
      params.require(:exercise).permit(:name, :reps, :sets, :description, :muscle_group_id, :difficulty_id)
    end
    def find_exercise
      @exercise = Exercise.find(params[:id])
    end


end
