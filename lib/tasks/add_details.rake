namespace :add_details do
  desc "To run it use 'rails add_details:about'"
  task about: :environment do
    if Detail.find_by(detail_type: "About")
      puts "About is already present."
    else
      Detail.create!(
        detail_type: "About",
        title: "ABOUT US",
        description: "This is description for About Page."
      )
      puts "About Created!!!"
    end
  end

  desc "To run it use 'rails add_details:region'"
  task region: :environment do
    if Detail.find_by(detail_type: "Region")
      puts "Region is already present."
    else
      Detail.create!(
        detail_type: "Region",
        title: "Title of Region",
        description: "This is description for Region Page."
      )
      puts "Region Created!!!"
    end
  end

  # desc "To run it use 'rails add_details:blog'"
  # task blog: :environment do
  #   if Detail.find_by(detail_type: "Blog")
  #     puts "Blog is already present."
  #   else
  #     Detail.create!(
  #       detail_type: "Blog",
  #       title: "FROM OUR BLOG",
  #       description: "This is description for Blog Page."
  #     )
  #     puts "Blog Created!!!"
  #   end
  # end

  # desc "To run it use 'rails add_details:wine'"
  # task wine: :environment do
  #   if Detail.find_by(detail_type: "Wine")
  #     puts "Wine is already present."
  #   else
  #     Detail.create!(
  #       detail_type: "Wine",
  #       title: "WINES",
  #       description: "This is description for Wine Page."
  #     )
  #     puts "Wine Created!!!"
  #   end
  # end

  # desc "To run it use 'rails add_details:grape'"
  # task grape: :environment do
  #   if Detail.find_by(detail_type: "Grape")
  #     puts "Grape is already present."
  #   else
  #     Detail.create!(
  #       detail_type: "Grape",
  #       title: "GRAPES",
  #       description: "This is description for Grape Page."
  #     )
  #     puts "Grape Created!!!"
  #   end
  # end
end
