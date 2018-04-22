Given("I have a data table") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @table_captured = table.raw
end

Then("I am able to print out each names and age to the command line") do
  @table_captured.each do |data|
    puts "user name is #{data[0]} and age is #{data[1]}"
  end
end
