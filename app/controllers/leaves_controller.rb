class LeavesController < ApplicationController
  # GET /leaves
  # GET /leaves.json
  def index
    @leaves = Leave.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leaves }
    end
  end

  # GET /leaves/1
  # GET /leaves/1.json
  def show
    @leave = Leave.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leave }
    end
  end

  # GET /leaves/new
  # GET /leaves/new.json
  def new
    @leave = Leave.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leave }
    end
  end

  # GET /leaves/1/edit
  def edit
    @leave = Leave.find(params[:id])
  end

  # POST /leaves
  # POST /leaves.json
  def create
    @leave = Leave.new(params[:leave])

    respond_to do |format|
      if @leave.save
        format.html { redirect_to @leave, notice: 'leave was successfully created.' }
        format.json { render json: @leave, status: :created, location: @leave }
      else
        format.html { render action: "new" }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leaves/1
  # PUT /leaves/1.json
  def update
    @leave = Leave.find(params[:id])

    respond_to do |format|
      if @leave.update_attributes(params[:leave])
        format.html { redirect_to @leave, notice: 'leave was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaves/1
  # DELETE /leaves/1.json
  def destroy
    @leave = Leave.find(params[:id])
    @leave.destroy

    respond_to do |format|
      format.html { redirect_to leaves_url }
      format.json { head :ok }
    end
  end
end
