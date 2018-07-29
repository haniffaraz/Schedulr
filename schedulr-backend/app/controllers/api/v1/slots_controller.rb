class Api::V1::SlotsController < ApplicationController
  before_action :find_slot, only: [:show,:update]

  def index
    @slots = Slot.all
    render json: @slots
  end

  def show
    render json: @slot
  end

  def create
    @slot = Slot.new(slot_params)
    if @slot.save
      render json: @slot, status: :accepted
    else
      render json: { errors: @slot.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @slot.update(slot_params)
    if @slot.save
      render json: @slot, status: :accepted
    else
      render json: { errors: @slot.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def slot_params
    params.permit(:provider_id, :user_id, :appointment_time, :slot_duration_minutes)
  end

  def find_slot
    @slot = Slot.find(params[:id])
  end
end
