require_relative "menu.rb"
main_dishes = {
  message: "Which main dish would you like to purchase?", 
  options: [{"Chicken": "$5.00"}, {"Beef": "$4.50"}, {"Pork": "$5.50"}]
}
side_dishes = {
  message: "Which side dish would you like to purchase?",
  options: [{"Fries": "$1.50"}, {"Rice": "$1.00"}, {"Vegetables": "$2.00"}]
}

user_chooses_main_dish = Menu.new(main_dishes)
user_chooses_side_dish = Menu.new(side_dishes)

user_chooses_main_dish.print
selection1 = user_chooses_main_dish.get_selection
puts selection1

user_chooses_side_dish.print
selection2 = user_chooses_side_dish.get_selection
puts selection2

user_chooses_side_dish.print
selection3 = user_chooses_side_dish.get_selection
puts selection3
# ask user for a choice
# the user chooses 2 side dish items
# computer repeats users orders
# computer totals lunch items 
# computes displays total
