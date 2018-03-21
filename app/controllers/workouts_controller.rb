class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workout, only: [:show, :edit, :update]

  def index
    @workouts = current_user.workouts
  end

  def show
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user = current_user
    if @workout.save
      flash[:success] = "Workout was successfully created"
      redirect_to workout_path(@workout)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      flash[:success] = "Workout was updated"
      redirect_to workout_path(@workout)
    else
      render 'edit'
    end
  end

  private

    def workout_params
      params.require(:workout).permit(:title, :workout_date, :type_id, :duration_in_hr, :duration_in_min, :distance, :comment, :user_id)
    end

    def set_workout
      @workout = current_user.workouts.find(params[:id])
    end
end
