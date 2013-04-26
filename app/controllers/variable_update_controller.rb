class VariableUpdateController < ApplicationController
  include ApplicationHelper

  def access_submit
    @data = params[:access_tab]
    @new = params[:access_new_record] == "true"
    api = ApiMethods.new
    @result = api.updateAccess(@data,session)
  end

  def access_delete
    @position = params[:position]
    api = ApiMethods.new
    @result = api.deleteAccess(@position,session)
  end

  def data_server_submit
    data = params[:data_server_tab]
    @new = params[:data_server_new_record] == "true"
    api = ApiMethods.new
    @result = api.updateDataServer(data,session)
    position = data["position"]
    @data = api.getDataServer(session,position)
    @data["position"] = position
  end

  def data_server_delete
    @position = params[:position]
    api = ApiMethods.new
    @result = api.deleteDataServer(@position,session)
  end

  def holiday_submit
    @data = params[:holiday_tab]
    @new = params[:holiday_new_record] == "true"
    api = ApiMethods.new
    @result = api.updateHoliday(@data,session)
  end

  def holiday_delete
    @position = params[:position]
    api = ApiMethods.new
    @result = api.deleteHoliday(@position,session)
  end

end