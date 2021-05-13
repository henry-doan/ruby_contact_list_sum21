require 'pry'
# Build a contact list
  # menu 
  # * store all contact 
    # array, hash, variable, scope file wide
    # contact has first name, string
    # contact has last name, string
    # contact has phone, string
    # contact has favorite, boolean
# Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
  # * method to display menu 
  # * grab the user input to see what they select, store in var
  # * logic to see if the choose 1, 2, 3 
    # *1 create a contact 
      # * grab the user input for first name, last name, phone, favorite 
      # * throw the values in a hash 
      # * add the hash to the contacts array
    # 2 view all contact 
      # iterate through the array of hashes and display them in a 
      # nice string
      # might use index 
    # * 3 exit
      # say goodbye 
      # exit
# The menu should loop until the user exits
  # * recursion to loop until user exits
  # or we can through menu in a while loop until the user exits

@contacts = [
  { first_name: 'bob', last_name: 'smith', phone: '123-123-1233', favorite: false },
  { first_name: 'lucy', last_name: 'jones', phone: '123-321-1233', favorite: true },
  { first_name: 'jack', last_name: 'mac', phone: '333-123-1233', favorite: true },
]

def main_menu
  puts "Welcome to the contact list! "
  puts "1) Create a Contact"
  puts "2) View all Contacts"
  puts "3) Exit"
  print "What would you like to do? "
  user_input = gets.strip.to_i
  # condition to see what the user type
  if user_input == 1
    create_contact
  elsif user_input == 2
    view_contacts
  elsif user_input == 3
    puts "Goodbye"
    exit
  else
    puts "Error chose 1, 2, or 3"
    main_menu
  end
end

def create_contact
  puts "Creating Contact"
  print "What is their first name: "
  user_input_f_name = gets.strip
  print "What is their last name: "
  user_input_l_name = gets.strip
  print "What is their number: "
  user_input_phone = gets.strip

  user_input_fav = check_fav

  new_contact = { 
    first_name: user_input_f_name,  
    last_name: user_input_l_name,
    phone: user_input_phone,
    favorite: user_input_fav
  }

  @contacts << new_contact

  # p @contacts 
  main_menu
end

# method t check the favorite and keep asking until they say y or n 
# return true for y
# return false for n
def check_fav
  print "Are they a favorite? (y/n): "
  user_fav = gets.strip
  if user_fav == "y"
    return true
  elsif user_fav == "n"
    return false 
  else
    puts "not vaild input"
    check_fav
  end
end

def view_contacts
  puts "view all contacts"
  
  # main_menu
end

main_menu

# while true
#   main_menu
# end