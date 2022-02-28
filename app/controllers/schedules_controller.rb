class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end
  
  def new
    @schedules = Schedule.new
  end
  
  def create
    @schedule = @Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :allday, :introduction))
    if @schedule.save
      flash[:notice] ="ユーザーを新規登録しました"
      redirect_to :users
    else
      render "new"
    end
  end 
  
  def show
  end 
  
  def edit
  end 
  
  def update
  end 
  
  def destroy
  end 
  
end
