require_relative "menu.rb"
main_dishes = {
  message: "Which main dish would you like to purchase?", 
  options: ["Chicken", "Beef", "Pork"]
}
side_dishes = {
  message: "Which side dish would you like to purchase?"
  options: ["Fries", "Rice", "Vegetables"]
}

main_menu_test = Menu.new(main_dishes)
side_dishes_test = Menu.new(side_dishes)

main_menu_test.print
selection1 = main_menu_test.get_selection
puts selection1

main_menu_test.print
selection1 = main_menu_test.get_selection
puts selection1
# ask user for a choice
# the user chooses 2 side dish items
# computer repeats users orders
# computer totals lunch items 
# computes displays total
