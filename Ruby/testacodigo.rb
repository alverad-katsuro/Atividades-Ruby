File.open("boletim-covid-21-04-2021.csv") do |file|
  file.each_line do |x|
    status = (x.split ",")[1]
    puts status
  end
end