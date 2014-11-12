class DatasetsController < ActionController::Base
  def index
    @datasets = Dataset.all
  end
  
  def show
    @dataset = Dataset.find(params[:id])
  end
  
  def create
    @dataset = Dataset.create(params[:dataset].permit!)
    redirect_to datasets_path
  end
  
  def vote
    @dataset = Dataset.find(params[:id])
    current_user.likes @dataset
    redirect_to @dataset
  end
end
