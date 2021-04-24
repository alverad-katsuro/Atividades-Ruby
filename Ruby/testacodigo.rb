confirmTot = 0
deathTot = 0
comfirmSlot = {}
deathSlot = {}
vacinSlot = {}
confirmSort = []


File.open "boletim-covid-21-04-2021.csv" do |file|
  puts file.each_line{|l| 
 
    datab = l.split ","

  }
end

a = File.open("boletim-covid-21-04-2021.csv").readlines 
print (a[5].split",")[5]
#puts a
#a.each_line {|l|    datab = l.split ","}