ActiveAdmin.register Detail do
  permit_params :title, :description

  controller do
    actions :all, :except => [:new, :create, :destroy]
  end

  index do
    column :id
    column :detail_type
    column :title
    column :description
    actions
  end
end
