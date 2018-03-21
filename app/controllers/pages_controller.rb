class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def home
  end

  def about
  end

  def contact
  end

  def dashboard
    @workouts = current_user.workouts
  end
end
