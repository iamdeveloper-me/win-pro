ActiveAdmin.register Contact do
  permit_params :contact_number, :address
  
  config.filters = false

  controller do
    actions :all, :except => [:new, :create, :destroy]
  end

  index do
    column :id
    column :email
    column :contact_number
    column :address
    actions
  end

  form do |f|
    f.inputs "grape" do
      f.input :email, input_html: { disabled: true }
      f.input :contact_number
      f.input :address
    end
    f.actions
  end
end
