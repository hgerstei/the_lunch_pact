ActiveAdmin.register Category do

 permit_params :type, :sub_categories, :photo_url, :lifespan, :refrigeration, :storage_suggestions, :stage1, :stage2, :stage3, :stage4

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
