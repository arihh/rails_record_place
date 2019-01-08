# frozen_string_literal: true

class PlaceRecordsController < ApplicationController
  before_action :set_place_record, only: [:show, :edit, :update, :destroy]

  # GET /place_records
  # GET /place_records.json
  def index
    @place_records = PlaceRecord.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @place_records.map(&:to_json) }
    end
  end

  # GET /place_records/1
  # GET /place_records/1.json
  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @place_record.to_json }
    end
  end

  # GET /place_records/new
  def new
    @place_record = PlaceRecord.new
  end

  # GET /place_records/1/edit
  def edit
  end

  # POST /place_records
  # POST /place_records.json
  def create
    @place_record = PlaceRecord.new(place_record_params)

    respond_to do |format|
      if @place_record.save
        format.html { redirect_to @place_record, notice: "PlaceRecord was successfully created." }
        format.json { render :show, status: :created, location: @place_record }
      else
        format.html { render :new }
        format.json { render json: @place_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_records/1
  def update
    if @place_record.update(place_record_params)
      redirect_to @place_record, notice: "Place record was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /place_records/1
  def destroy
    @place_record.destroy
    redirect_to place_records_url, notice: "Place record was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_record
      @place_record = PlaceRecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def place_record_params
      params.require(:place_record).permit(:lat, :lon, :comment)
    end
end
