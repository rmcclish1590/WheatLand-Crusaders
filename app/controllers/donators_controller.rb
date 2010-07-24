class DonatorsController < SecuredController
  def index
    @donors = Donator.all
  end

  def edit
    @donors = Donator.all
  end

  def update
    
  end
end
