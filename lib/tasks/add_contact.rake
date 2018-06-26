namespace :add_contact do
  desc "To run it use 'rails add_contact:information'"
  task information: :environment do
    if Contact.find_by(email: "SF@Grapedia.com")
      puts "Contact is already present."
    else
      Contact.create!(
        email: "SF@Grapedia.com",
        contact_number: "(000) 123 456789",
        address: "157 New Kent Rd, Borough, London SE1 4AG, UK"
      )
      puts "Contact Created!!!"
    end
  end
end
