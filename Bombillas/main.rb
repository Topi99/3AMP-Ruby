class Planta
	def initialize()
	end
	def calcPorDef(defect, prod)
		porcent = (defect / prod) * 100
		return porcent
	end
end

prod = []
defect = []
acum = 0
totDefect = 0
acumPor = 0 

for p in(1..5)

	puts "Planta #{p}\n\n"
	for i in(0..6)
		y = i+1
		print "Ingrese la cantidad de bombillas producidad el dia #{y}  "
		producidas = gets.chomp
		prod[i] = producidas.to_i
		print "Ingrese la cantidad de bobillas defectuosas del dia #{y} "
		defectuosas = gets.chomp
		defect[i] = defectuosas.to_i
	end

	defectTot  = 0 
	prodTot = 0 
	for z in(0..6)
		defectTot = defectTot + defect[z]
		prodTot = prodTot + prod[z]
	end

	plant = Planta.new()
	puts "\nTotal de defectuosos en planta #{p}: #{defectTot}"
	puts "Total de producidos en planta #{p}: #{prodTot}"
	puts "#{plant.calcPorDef(defectTot.to_f, prodTot.to_f)}%\n\n"
	acumPor = acumPor + plant.calcPorDef(defectTot.to_f, prodTot.to_f)
	acum = acum + defectTot
end

puts "\nTotal de defectuosos: #{acum}"
totDefect = acumPor / 5
puts "Porcentaje total: #{totDefect}%"


gets()