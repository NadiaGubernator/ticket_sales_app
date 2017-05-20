class LinesController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy,
          :tickets_available]

  helper_method :tickets_available

  def index
    @lines = Line.all
  end

  def show
  end

  def new
    @line = Line.new
  end

  def edit
  end

  def create
    @line = Line.new
    if @line.save
      redirect_to @line, notice: 'Line was successfully created.'
    else
        render :new
    end
  end

  def update
    if @line.update(line_params)
      redirect_to @line, notice: 'Line was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @line.destroy
    redirect_to lines_url, notice: 'Line was successfully destroyed.'
  end

  def tickets_available(line)
    @line.params[:seats_total]-Ticket.where(line_id: line.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line
      @line = Line.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_params
      params.require(:line).permit(:seats_total, :departure_city, :departure_time, :arrival_city, :arrival_time)
    end
end
