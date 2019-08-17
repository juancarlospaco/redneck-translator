from strutils import multiReplace


func redneckify*(text: string): string =
  ## Redneck string translator for Y'all.
  const replacements = {"hello": "howdy",
  "hi": "howdy",
  "you all": "yall",
  "you guys": "yall",
  "you girls": "yall",
  "you people": "yall",
  "your": "yall",
  "over there": "yonder",
  "dinner": "supper",
  "darn": "dadgummit",
  "dammit": "dadgummit",
  "damm": "dadgummit",
  "darned": "doggone",
  "dammed": "doggone",
  "almost": "nearabout",
  "tomatoes": "tomatahs",
  "tomato": "tomatahs",
  "insignificant": "piddlin",
  "irrelevant": "piddlin",
  "regard": "reckon",
  "angry": "rile",
  "agitated": "riled",
  "scatter": "skedaddle",
  "displeasure": "tarnation",
  "surprise": "tarnation",
  "going": "goin",
  "conceited": "uppity",
  "snobby": "uppity",
  "northener": "yankee",
  "ghost": "haint",
  "young": "youngin",
  "youngs": "youngins",
  "youths": "younguns",
  "aunt": "aint",
  "shopping cart": "buggy",
  "your": "yo",
  "transport": "carry",
  "soda": "coke",
  "pressing": "mashin",
  "lowlife": "sorry",
  "discourteous": "ugly",
  "parents": "folks",
  "once": "onced",
  "twice": "twiced",
  "slow": "slow as molasses",
  "god": "good gosh amighty",
  "craving": "a hankerin",
  "told": "hear tell",
  "sure enough": "sho nuff",
  "comfortable": "snug as a bug",
  "cozy": "snug as a bug",
  "pants": "britches",
  "dressed": "gussied-up",
  "family": "kinfolks",
  "push": "mash",
  "potato": "tater",
  "snobby": "uppity",
  "mouth": "yapper",
  "borrow": "bard",
  "ignorant": "ignert",
  "tightening": "tightnin",
  "supervisor": "bahs",
  "exhausted": "tarred",
  "could not": "cuddint",
  "understand": "unnerstand",
  "foreign": "farn",
  "bureaucratic": "gummit",
  "get it": "jeet yit",
  "makes": "meks",
  "gallon": "gallun",
  "outdoors": "outdoaws",
  "orange": "awange",
  "luminescent": "lot",
  "coca cola": "co-cola",
  "guests": "kumpny",
  "whiskey": "likker",
  "completely": "plum",
  "salty": "saar",
  "fatigued": "tarred",
  "america": "murica",
  "difficult": "hod",
  "flatten": "squarsh",
  "inflate": "air-up",
  "pressurize": "air-up",
  "mischief": "larkin",
  "arkansans": "arkansawyer",
  "stomach": "bread-basket",
  "askew": "cattywampus",
  "multitalented": "chief-cook'n'bottle-washer",
  "urge": "egg-on",
  "healthy": "fit-as-fiddle",
  "peanuts": "goobers",
  "large quantity": "heap",
  "smart": "horse-sense",
  "quickly": "lickety-split",
  "nurse": "nuss",
  "hour": "ahr",
  "worst": "awfullest",
  "cause": "cawse",
  "peril": "danjuh",
  "darling": "dollin",
  "soon": "dreckly",
  "exertion": "effut",
  "exertions": "effuts",
  "encompassing": "everthang",
  "excellent": "fahn",
  "attractive": "fetchin",
  "about to": "fixin to",
  "somewhere else": "fummeer",
  "departed": "gawn",
  "haircut": "hahrcut",
  "i dont": "iont",
  "self-taught": "jack-leg",
  "you want": "jewant",
  "naked": "nekkid",
  "unclothed": "nekkid",
  "never mind": "nemmine",
  "only one": "ownliest",
  "pretty": "purtiest",
  "right now": "rahtnaow",
  "restaurant": "restrunt",
  "should not": "shudenoughta",
  "distraught": "tore-up",
  "comical": "uhmewzin",
  "used to": "usta",
  "do you want any": "yontny",
  "is it": "zit",
  "i am going to": "amago",
  "cover": "covuurr",
  "pepsi", "co-cola",
  "nowhere": "middle-o-nowhere",
  "sideways": "caddywonked",
  "service road": "access road",
  "vacuum cleaner": "sweeper",
  "i remember": "ya reckon",
  "you hear": "y'hear",
  "woman": "ma'am",
  "tobacco": "backer",
  "tiny": "lil",
  "boy": "good'ole'boy",
  "boys": "good'ole'boys",
  "grandfather": "papaw",
  "grandmother": "granny",
  "sister": "sista",
  "mosquitoes": "mosquitas",
  "them": "'em",
  "crooked": "caddywonked",
  "dessert": "puddin",
  "wasting time": "lollygaggin",
  "calm down": "simmer down",
  "wait a minute": "hold yerr horses",
  "wait a moment": "hold yerr horses",
  "wait a second": "hold yerr horses",
  "flustered": "ruffled-feathered",
  "winter cap": "tobaggon",
  "oh no": "hell naw",
  "sunny and rainy": "devil beating his wife",
  "raining with sun": "devil beating his wife",
  "raining": "raining cats and dogs",
  "gas station": "fillin station",
  "through": "thew",
  "water hose": "hosepipe",
  "i do not know": "i dunno",
  "remote control": "clicker",
  "refrigerator": "icebox",
  "banana": "nanner",
  "completely dead": "deader than door nail",
  "disreputable": "ragamuffin",
  "unkempt": "ragamuffin",
  "dishonest": "ragamuffin",
  "mentally unstable": "high as a kite",
  "preparing to": "fixin'to",
  "sharap": "hush yo'mouth",
  "shut up": "hush yo'mouth",
  "i swear": "i s'wanee",
  }
  multiReplace(text, replacements)


runnableExamples: echo redneckify("hello you all completely ignorant young boys")


when isMainModule:
  from os import paramCount, commandLineParams
  from strutils import join, normalize, strip
  if paramCount() == 0: quit("USE:\n\t./redneck_translator 'message here'\n", 1)
  quit(redneckify(commandLineParams().join" ".normalize.strip), 0)
