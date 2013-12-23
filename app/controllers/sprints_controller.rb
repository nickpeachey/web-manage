class SprintsController < ApplicationController

  def index
    @sprints = Sprint.all
  end

  def new
    @sprint = Sprint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sprint }
    end
  end

  def create
    @sprint = Sprint.new(params[:template])

    respond_to do |format|
      if @sprint.save
        format.html { redirect_to @sprint, notice: 'Sprint was successfully created.' }
        format.json { render json: @sprint, status: :created, location: @sprint }
      else
        format.html { render action: "new" }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @sprint = Sprint.find(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sprint }
    end
  end

end
