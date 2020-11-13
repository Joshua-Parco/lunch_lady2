class Menu
  def initialize(menu)
    @menu = menu
  end

  def print
    border = @menu[:message].gsub(/\s|\S/, "*")
    puts border
    puts @menu[:message]
    puts border
    @menu[:options].each_with_index do |item, index|
      puts "#{index + 1}) #{item}"
    end
  end

  def get_selection
    puts "Select a value"
    input = gets.strip
    selection = Integer(input)
    if (selection >= 1 && selection <= @menu[:options].size)
      return selection
    else
      puts "#{selection} need to be in between 1 and #{@menu[:options].size}, please try again"
      self.get_selection
    end
  rescue ArgumentError
    puts "#{input} is not a integer please select a integer"
    self.get_selection
  end
end
