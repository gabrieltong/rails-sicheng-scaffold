class MarketActivitiesController < ApplicationController
  # GET /market_activities
  # GET /market_activities.json
  def index
    @market_activities = MarketActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @market_activities }
    end
  end

  # GET /market_activities/1
  # GET /market_activities/1.json
  def show
    @market_activity = MarketActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @market_activity }
    end
  end

  # GET /market_activities/new
  # GET /market_activities/new.json
  def new
    @market_activity = MarketActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @market_activity }
    end
  end

  # GET /market_activities/1/edit
  def edit
    @market_activity = MarketActivity.find(params[:id])
  end

  # POST /market_activities
  # POST /market_activities.json
  def create
    @market_activity = MarketActivity.new(params[:market_activity])

    respond_to do |format|
      if @market_activity.save
        format.html { redirect_to @market_activity, notice: 'Market activity was successfully created.' }
        format.json { render json: @market_activity, status: :created, location: @market_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @market_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /market_activities/1
  # PUT /market_activities/1.json
  def update
    @market_activity = MarketActivity.find(params[:id])

    respond_to do |format|
      if @market_activity.update_attributes(params[:market_activity])
        format.html { redirect_to @market_activity, notice: 'Market activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @market_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_activities/1
  # DELETE /market_activities/1.json
  def destroy
    @market_activity = MarketActivity.find(params[:id])
    @market_activity.destroy

    respond_to do |format|
      format.html { redirect_to market_activities_url }
      format.json { head :no_content }
    end
  end
end
