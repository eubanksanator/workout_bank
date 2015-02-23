class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
  end

  def show
    @muscle_group = MuscleGroup.find(params[:id])
  end

  def new
    @muscle_group = MuscleGroup.new
  end

  def create
    @muscle_group = MuscleGroup.new
    @muscle_group.location = params[:location]

    if @muscle_group.save
      redirect_to muscle_groups_url, :notice => "Muscle group created successfully."
    else
      render 'new'
    end
  end

  def edit
    @muscle_group = MuscleGroup.find(params[:id])
  end

  def update
    @muscle_group = MuscleGroup.find(params[:id])

    @muscle_group.location = params[:location]

    if @muscle_group.save
      redirect_to muscle_group_url(@muscle_group.id), :notice => "Muscle group updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @muscle_group = MuscleGroup.find(params[:id])

    @muscle_group.destroy

    redirect_to muscle_groups_url, :notice => "Muscle group deleted."
  end
end
