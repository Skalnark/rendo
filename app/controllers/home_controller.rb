class HomeController < ApplicationController
  before_action :authenticate_interviewer!
  def index
  end
end
