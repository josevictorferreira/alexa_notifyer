# frozen_string_literal: true

class EventsController < ApplicationController

  def create
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
