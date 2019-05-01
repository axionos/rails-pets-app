class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.valid?
      @owner.save
      flash[:notice] = "Owner successfully created"
      redirect_to @owner
    else
      flash[:notice] = "#{@owner.errors.full_messages[0]}"
      render :new
    end
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
    redirect_to @owner
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to owners_path
  end

  def multi_pets
    @owners = Owner.multi_pets
  end

  private

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :age, :email)
  end
end
