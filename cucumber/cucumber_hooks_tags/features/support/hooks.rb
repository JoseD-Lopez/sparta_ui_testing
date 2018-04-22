Before('@test') do
  @users = ['Dave', 'Susan', 'Jamie']
end

After do
  puts 'Im a after hook and I have run'
end

After('@test') do
  puts 'This is specific to test'
end
