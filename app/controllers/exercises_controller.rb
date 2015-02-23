class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new
    @exercise.name = params[:name]
    @exercise.reps = params[:reps]
    @exercise.sets = params[:sets]
    @exercise.description = params[:description]
    @exercise.muscle_group_id = params[:muscle_group_id]
    @exercise.difficulty_id = params[:difficulty_id]

    if @exercise.save
      redirect_to exercises_url, :notice => "Exercise created successfully."
    else
      render 'new'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])

    @exercise.name = params[:name]
    @exercise.reps = params[:reps]
    @exercise.sets = params[:sets]
    @exercise.description = params[:description]
    @exercise.muscle_group_id = params[:muscle_group_id]
    @exercise.difficulty_id = params[:difficulty_id]

    if @exercise.save
      redirect_to exercise_url(@exercise.id), :notice => "Exercise updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])

    @exercise.destroy

    redirect_to exercises_url, :notice => "Exercise deleted."
  end
end
