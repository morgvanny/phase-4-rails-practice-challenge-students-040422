class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response
  
  private

  def render_not_found_response
    render json: {error: "Record not found"}, status: :not_found
  end

  def render_record_invalid_response (invalid)
    render json: {errors: invalid.record.errors.full_messages }, status: :unprecessable_entity
  end

end
