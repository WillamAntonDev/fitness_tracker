class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout, notice: "Workout was successfully created."
    else
      render :new
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update(workout_params)
      redirect_to @workout, notice: "Workout was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    if @workout.destroy
      redirect_to workouts_path, notice: "Workout was successfully deleted."
    else
      redirect_to workouts_path, alert: "Failed to delete the workout."
    end
  end


  private

  def workout_params
    params.require(:workout).permit(:name, :date, :exercise_type, :duration, :notes)
  end
end
