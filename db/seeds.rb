# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DATA = {
    :user_keys =>
      ["name", "email", "phone_number", "password"],
    :users => [
      ["David Stewart", "davidstewart@gmail.com", 4043046839, "password"],
      ["Skai Jackson", "SkaiJackson@gmail.com", 4345673459, "password"],
      ["Kaleo Elam", "KaleoElam@gmail.com", 4043045639, "password"],
      ["Megan Charpentier", "MeganCharpentier@gmail.com", 5674323456,"password"],
      ["Hayden Byerly", "HaydenByerly@gmail.com", 2324563434, "password"],
      ["Tenzing Norgay Trainor", "TenzingTrainor@gmail.com", 4345673434, "password"]
    ],
    :company_keys =>
     ["name", "address", "phone_number"],
    :companies => [
      ["ESCO Construction", "3540 Evergreen Parkway", 7209834545],
      ["Kiewit", "234 Inverness Parkway", 2324563433],
      ["Bo-Brothers", "1818 Gwinett Street", 4345671234],
      ["Hamon Infrastructure", "5420 Denver Street",7383451234],
      ["Flatiron Construction", "8929 Broadway Street", 2435670987],
    ],
    :admins => [
      "David Stewart",
    ]
  }
  
  def main
    make_users
    make_admin
    make_companies
  end
  
  def make_users
    DATA[:users].each do |user|
      new_user = User.new
      user.each_with_index do |attribute, i|
        new_user.send(DATA[:user_keys][i]+"=", attribute)
      end
      new_user.save
    end
  end
  
  def make_admin
    DATA[:admins].each do |name|
      User.create(name: name, admin: true, password: 'password')
    end
  end
  
  def make_companies
    DATA[:companies].each do |company|
      new_company = Company.new
      company.each_with_index do |attribute, i|
        new_company.send(DATA[:company_keys][i] + "=", attribute)
      end
  
    end
  end
  
  main