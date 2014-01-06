class Mistake
	attr_accessor :error
	MISTAKES = [
		"a moaron",
		"a bidch",
		"a beaver damn",
		"asswhole",
		"are so gullable",
		"astro projection",
		"bastart",
		"be stupit",
		"dooshbag",
		"expurt opinion",
		"fatheres",
		"foothpath",
		"fucking moreon",
		"geniune",
		"good can judge me",
		"hight IQ",
		"hunny nut",
		"I'm a genious",
		"i'm smartt",
		"in america we speak american",
		"itiot",
		"mindgrain",
		"misspell",
		"love peenut butter",
		"no regerets",
		"out in pubic",
		"retarted",
		"ritarted",
		"sitty day",
		"so wize",
		"stoopid fag",
		"the shapest",
		"the worse attitude",
		"the worse thing",
		"u r so dum",
		"ur so dum",
		"ur stewpid",
		"ur a faget",
		"ur just made",
		"very thoughfull",
		"wear a candom",
		"whats happending",
		"wondering around the streets",
		"ur a looser",
		"your in america",
		"your public hair",
		"you should cum over on",
		"your just made",
		"youre just made",
		"your a faget",
		"youre a faget"
		]

	def initialize
		@error = MISTAKES.sample
	end

	def get_url
		mistake = error.gsub(" ", "%20")  
		"https://twitter.com/search?q=%22"+mistake+"%22&src=typd&f=realtime"
	end

end

