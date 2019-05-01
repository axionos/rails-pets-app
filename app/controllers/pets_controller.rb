class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
    @owners = Owner.all
  end

  def create
    @pet = Pet.create(pet_params)

    if @pet.valid?
      @pet.save
      flash[:notice] = "Pet is successfully added"
      redirect_to @pet
    else
      flash[:notice] = "#{@pet.errors.full_messages[0]}"
      render :new
    end
    # redirect_to @pet

  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to @pet
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :animal_type, :owner_id)
  end

end
