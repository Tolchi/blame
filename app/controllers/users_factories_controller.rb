class UsersFactoriesController < ApplicationController
  # GET /users_factories
  # GET /users_factories.json
  def index
    @users_factories = UsersFactory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_factories }
    end
  end

  # GET /users_factories/1
  # GET /users_factories/1.json
  def show
    @users_factory = UsersFactory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_factory }
    end
  end

  # GET /users_factories/new
  # GET /users_factories/new.json
  def new
    @users_factory = UsersFactory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_factory }
    end
  end

  # GET /users_factories/1/edit
  def edit
    @users_factory = UsersFactory.find(params[:id])
  end

  # POST /users_factories
  # POST /users_factories.json
  def create
    @users_factory = UsersFactory.new(params[:users_factory])

    respond_to do |format|
      if @users_factory.save
        format.html { redirect_to @users_factory, notice: 'Users factory was successfully created.' }
        format.json { render json: @users_factory, status: :created, location: @users_factory }
      else
        format.html { render action: "new" }
        format.json { render json: @users_factory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_factories/1
  # PUT /users_factories/1.json
  def update
    @users_factory = UsersFactory.find(params[:id])

    respond_to do |format|
      if @users_factory.update_attributes(params[:users_factory])
        format.html { redirect_to @users_factory, notice: 'Users factory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_factory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_factories/1
  # DELETE /users_factories/1.json
  def destroy
    @users_factory = UsersFactory.find(params[:id])
    @users_factory.destroy

    respond_to do |format|
      format.html { redirect_to users_factories_url }
      format.json { head :no_content }
    end
  end
end
