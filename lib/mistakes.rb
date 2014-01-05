class Mistake
	attr_writer :url
	MISTAKES = [
		"perfur", "astro projection",
		"whats happending", "foothpath",
		"degenerous", "mindgrain", "fatheres",
		"wondering around the streets",
		"the worse thing", "two halfs",
		"your in america", "impactful",
		"irregardless", "effect me",
		"more stupid then", "good can judge me",
		"no regerets", "your so boring",
		"geniune", "purfect", "the worse attitude",
		"hunny nut", "your public hair", 
		"out in pubic", "misspell", 
		"its wierd", "ur so dum", "stewpid",
		"itiot", "in america we speak american",
		"learn american language", "ritarded",
		"retarted", "ritarted", "fucking moreon",
		"I'm a genious", "expurt opinion",
		"so wize", "have a nack for", "u r so dum"
		]

	def initialize
		@url = ""
	end

	def get_url
		my_sample = MISTAKES.sample
		mistake = my_sample.gsub(" ", "%20")  
		"https://twitter.com/search?q="+mistake+"&src=typd&f=realtime"
	end

end

