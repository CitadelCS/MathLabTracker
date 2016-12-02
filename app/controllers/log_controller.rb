class LogController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]


def index
  @logs = log.all
end

  def show
    id = params[:id]
    @log = log.find(id)
  end

  def create
    
    @log = log.new(log_params)
  end
    def submit
    @cwid = params[:id]
   # if params[:commit] == 'Login'
      respond_to do |format|
      @log.create(:CWID => @cwid, :timestamp => Time.now )#waiting for class implementation to be added
         format.html { render 'login'}
  #    end
    end
    end



    
    def purge
      #This will delete all logs
      Log.delete_all
      respond_to do |format|
      format.html { redirect_to students_url, notice: 'All logs have now been deleted.' }
      format.json { head :no_content }
        end
    end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      id = params[:id]
      @log = log.find(id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  #  def log_params
   #   params.require(:log).permit(:CWID, :timestamp, :class)
   # end
end