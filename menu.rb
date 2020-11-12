
class Menu
  def initialize(menu)
    @menu = menu
  end

  # def print method
  def print
    # display menu message
    ## replaces chars and spaces with *
    border = @menu[:message].gsub(/\s|\S/, "*")
    puts border
    puts @menu[:message]
    puts border
    # loop oveior menu options, need to add logic to add 1) as well
    @menu[:options].each_with_index do |item, index|
      puts "#{index + 1}) #{item}"
    end
  end

  # get user input return the number in the list, do error checking handling
  def get_selection
    # get input from user convert to int
    puts "Select a value"
    input = gets.strip
    # if input is not a valid integer it will go to rescue
    selection = Integer(input)
    # check if input is int, maybe check is a valid int ie if we four option in our menu the value 1,2,3,4
    if (selection >= 1 && selection <= @menu[:options].size)
      return selection
    else
      puts "#{selection} need to be in between 1 and #{@menu[:options].size}, please try again"
      self.get_selection
    end
  rescue ArgumentError
    #if a ArgumentError occurs above than ruby will come here instead of throwing error
    puts "#{input} is not a integer please select a integer"
    self.get_selection
  end
end
