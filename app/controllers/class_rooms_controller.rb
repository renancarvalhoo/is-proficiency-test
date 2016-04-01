class ClassRoomsController < ApplicationController
  before_action :set_class_room, only: [:show, :edit, :update, :destroy]

  # GET /class_rooms
  # GET /class_rooms.json
  def index
    @class_rooms = ClassRoom.all
    respond_with(@class_rooms)
  end

  # GET /class_rooms/1
  # GET /class_rooms/1.json
  def show
    respond_with(@class_room)
  end

  # GET /class_rooms/new
  def new
    @class_room = ClassRoom.new
    respond_with(@class_room)
  end

  # GET /class_rooms/1/edit
  def edit
  end

  # POST /class_rooms
  # POST /class_rooms.json
  def create
    @class_room = ClassRoom.create(class_room_params)
    respond_with(@class_room, :location => @class_room)
  end

  # PATCH/PUT /class_rooms/1
  # PATCH/PUT /class_rooms/1.json
  def update
    @class_room.update(class_room_params)
    respond_with(@class_room, :location => @class_room)
  end

  # DELETE /class_rooms/1
  # DELETE /class_rooms/1.json
  def destroy
    @class_room.destroy
    respond_with(nil, :location => class_rooms_path)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_class_room
    @class_room = ClassRoom.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def class_room_params
    params.require(:class_room).permit(:student_id, :course_id, :entry_at)
  end
end
