class Mistake
	attr_accessor :error
	MISTAKES = [
		"a moaron",
		"a bidch",
		"a touchedown",
		"asswhole",
		"are so gullable",
		"affidavid for",
		"angles watching me",
		"angles up in heaven",
		"astro projection",
		"bastart",
		"be stupit",
		"bowjob",
		"be obeast",
		"dooshbag",
		"drink bear",
		"drinking bear",
		"expurt opinion",
		"for collage",
		"femails be",
		"fucking moreon",
		"geniune",
		"good can judge me",
		"go to Standford",
		"harverd student",
		"have no manors",
		# "hight IQ",
		"hunny nut",
		"I'm a genious",
		"i minus well",
		"i hate hippocrates",
		"i'm smartt",
		"it smells like guy colon",
		"in america we speak american",
		"itiot",
		"i'm a gril",
		"kindness for granite", 
		"mindgrain",
		"my boyfiend",
		"my girlfiend",
		"my beastfriend",
		"my angles watching",
		"money on my mid",
		"mispell word",
		"my angles watching",
		"my niceness for granite",
		# "lawndry day",
		# "lawndry dae",
		"love peenut butter",
		"live bicuriously",
		"life for granite you",
		"like colone",
		"no regerets",
		"out in pubic",
		"of skin milk",
		"of angles watching",
		"retarted",
		"really good umbeyonce",
		"sitty day",
		"smell of good colon",
		"so wize",
		"stoopid fag",
		"thing for granite",
		"the foothpath",
		"the femails that",
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
		"we take for granite",
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

