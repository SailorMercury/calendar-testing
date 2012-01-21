class WelcomeController < ApplicationController
  def index
    @leaves = Leave.all
    @new_leave = Leave.new
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end
end
