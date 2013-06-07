class OppsController < ApplicationController
  # GET /opps
  # GET /opps.json
  def index
    @opps = Opp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @opps }
    end
  end

  # GET /opps/1
  # GET /opps/1.json
  def show
    @opp = Opp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @opp }
    end
  end

  # GET /opps/new
  # GET /opps/new.json
  def new
    @opp = Opp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @opp }
    end
  end

  # GET /opps/1/edit
  def edit
    @opp = Opp.find(params[:id])
  end

  # POST /opps
  # POST /opps.json
  def create
    @opp = Opp.new(params[:opp])

    respond_to do |format|
      if @opp.save
        format.html { redirect_to @opp, notice: 'Opp was successfully created.' }
        format.json { render json: @opp, status: :created, location: @opp }
      else
        format.html { render action: "new" }
        format.json { render json: @opp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /opps/1
  # PUT /opps/1.json
  def update
    @opp = Opp.find(params[:id])

    respond_to do |format|
      if @opp.update_attributes(params[:opp])
        format.html { redirect_to @opp, notice: 'Opp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @opp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opps/1
  # DELETE /opps/1.json
  def destroy
    @opp = Opp.find(params[:id])
    @opp.destroy

    respond_to do |format|
      format.html { redirect_to opps_url }
      format.json { head :no_content }
    end
  end
end
