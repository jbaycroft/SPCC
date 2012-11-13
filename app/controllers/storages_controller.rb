class StoragesController < ApplicationController
  # GET /storages
  # GET /storages.json
  before_filter :get_client
  def get_client
    @client = Client.find(params[:client_id])
  end
  def index
    @storages = @client.storages.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storages }
    end
  end

  # GET /storages/1
  # GET /storages/1.json
  def show
    @storage = @client.storages.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storage }
    end
  end

  # GET /storages/new
  # GET /storages/new.json
  def new
  end

  # GET /storages/1/edit
  def edit
    @storage = @client.storages.find(params[:id])
  end

  # POST /storages
  # POST /storages.json
  def create
    @storage = @client.storages.new(params[:storage])

    respond_to do |format|
      if @storage.save
        format.html { redirect_to client_storages_path(@client), notice: 'Storage was successfully created.' }
        format.json { render json: @storage, status: :created, location: @storage }
      else
        format.html { render action: "new" }
        format.json { render json: @storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /storages/1
  # PUT /storages/1.json
  def update
    @storage = @client.storages.find(params[:id])

    respond_to do |format|
      if @storage.update_attributes(params[:storage])
        format.html { redirect_to @storage, notice: 'Storage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storages/1
  # DELETE /storages/1.json
  def destroy
    @storage = @client.storages.find(params[:id])
    @storage.destroy

    respond_to do |format|
      format.html { redirect_to client_storages_url(@client) }
      format.json { head :no_content }
    end
  end
end
