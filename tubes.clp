(deftemplate restaurant
	(field name)
	(field smoke)
	(field minBudget)
	(field maxBudget)
	(multifield dresscode)
	(field wifi)
	(field latitude)
	(field longitude)
)

(deffacts generate-restaurant
	(restaurant
		(name A)
		(smoke true)
		(minBudget 1000)
		(maxBudget 2000)
		(dresscode casual)
		(wifi true)
		(latitude -6.8922186)
		(longitude 107.5886173)
	)

	(restaurant
		(name B)
		(smoke false)
		(minBudget 1200)
		(maxBudget 2500)
		(dresscode informal)
		(wifi true)
		(latitude -6.224085)
		(longitude 106.7859815)
	)

	(restaurant
		(name C)
		(smoke true)
		(minBudget 2000)
		(maxBudget 4000)
		(dresscode formal)
		(wifi false)
		(latitude -6.2145285)
		(longitude 106.8642591)
	)

	(restaurant
		(name D)
		(smoke false)
		(minBudget 500)
		(maxBudget 1400)
		(dresscode formal)
		(wifi false)
		(latitude -6.9005363)
		(longitude 107.6222191)
	)

	(restaurant
		(name E)
		(smoke true)
		(minBudget 1000)
		(maxBudget 2000)
		(dresscode informal casual)
		(wifi true)
		(latitude -6.2055617)
		(longitude 106.8001597)
	)
)

(defrule startup
	=>
	(printout t
	"Smoke? (true/false)" crlf
	)
	(assert (isSmoke (read)))
	
	(printout t
	"minBudget?" crlf
	)
	(assert (isMinBudget (read)))

	(printout t
	"maxBudget?" crlf
	(assert (isMaxBudget (read)))
	)
)