ActiveAdmin.register Event do

  permit_params :title, :backgroundColor, :allDay, :start, :end 
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :backgroundColor, :allDay, :start, :end
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :backgroundColor, :allDay, :start, :end]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
