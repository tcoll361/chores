class ChoresController < ApplicationController
  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.new(chore_params)
    @chore.save
  end

  def index
    @chores = Chore.all
  end


private
  def chore_params
        params.require(:chore).permit(:name)
  end

end
