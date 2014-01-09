class Mistake
	attr_accessor :error
	MISTAKES = [
		"a moaron",
		"a bidch",
		"a touchedown",
		"asswhole",
		"are so gullable",
		"astro projection",
		"bastart",
		"be stupit",
		"bowjob",
		"be obeast",
		"dooshbag",
		"drink bear",
		"drinking bear",
		"expurt opinion",
		"foothpath",
		"fucking moreon",
		"geniune",
		"good can judge me",
		"go to Standford",
		"harverd student",
		# "hight IQ",
		"hunny nut",
		"I'm a genious",
		"i'm smartt",
		"in america we speak american",
		"itiot",
		"mindgrain",
		"my boyfiend",
		"my girlfiend",
		"my beastfriend",
		"money on my mid",
		"mispell word",
		# "lawndry day",
		# "lawndry dae",
		"love peenut butter",
		"no regerets",
		"out in pubic",
		"of skin milk",
		"retarted",
		"sitty day",
		"so wize",
		"stoopid fag",
		"the worse attitude",
		"the worse thing",
		"u r so dum",
		"u route",
		"ur so dum",
		"ur stewpid",
		"ur a faget",
		"ur just made",
		"very thoughfull",
		"wear a candom",
		"whats happending",
		"wondering around the streets",
		"ur a looser",
		"wining team",
		"you route for",
		"your boyfiend",
		"your girlfiend",
		"your public hair",
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

