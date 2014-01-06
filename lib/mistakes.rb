class Mistake
	attr_writer :url
	MISTAKES = [
		"a moaron",
		"are so gullable",
		"astro projection",
		"be stupit",
		"expurt opinion",
		"fatheres",
		"foothpath",
		"fucking moreon",
		"geniune",
		"good can judge me",
		"hunny nut",
		"I'm a genious",
		"i'm smartt",
		"in america we speak american",
		"itiot",
		"mindgrain",
		"misspell",
		"no regerets",
		"out in pubic",
		"retarted",
		"ritarded",
		"ritarted",
		"so wize",
		"stoopid fag",
		"the worse attitude",
		"the worse thing",
		"u r so dum",
		"ur so dum",
		"ur stewpid",
		"ur a faget",
		"wear a candom",
		"whats happending",
		"wondering around the streets",
		"you looser",
		"your in america",
		"your public hair",
		"your so boring"
		]

	def initialize
		@url = ""
	end

	def get_url
		my_sample = MISTAKES.sample
		mistake = my_sample.gsub(" ", "%20")  
		"https://twitter.com/search?q=%22"+mistake+"%22&src=typd&f=realtime"
	end

end

