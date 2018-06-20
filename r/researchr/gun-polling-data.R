source("desassr.R")

allPath <- "D:/dev/data/pew/extracted/W26_Apr17/"
sourceFile <- paste0(allPath, "ATP W26.sav", sep="")
destFile <- paste0(allPath, "ATP W26.csv", sep="")
dataDictFile <- paste0(allPath, "ATP W26_DataDict.sav", sep="")

savToCsv(sourceFile, destFile, dataDictFile)

# 1. QKEY
# 2. Wave 26 New Device Type
# 3. Language
# 4. FORM Selection
# 5. SATISF. All in all, are you satisfied or dissatisfied with the way things are going in this country today?
# 6. SATISFY. All in all, are you satisfied or dissatisfied with the way things are going in YOUR LOCAL COMMUNITY today?
# 7. POL1DT. Do you approve or disapprove of the way Donald Trump is handling his job as President?
# 8. POL1DTSTR. Do you [approve/disapprove] of the way Donald Trump is handling his job as President very strongly, or not so strongly?
# 9. SAFECRIME. How safe, if at all, would you say YOUR LOCAL COMMUNITY is from crime? Would you say it is...
# 10. WORLDDANGER. Compared to 50 years ago, do you think...
# 11. WORRYA. How much, if at all, do you worry about the following things happening to you? Having your home broken into
# 12. WORRYB. How much, if at all, do you worry about the following things happening to you? Being the victim of a terrorist attack
# 13. WORRYC. How much, if at all, do you worry about the following things happening to you? Losing your job
# 14. WORRYD. How much, if at all, do you worry about the following things happening to you? Not being able to pay your bills
# 15. WORRYE. How much, if at all, do you worry about the following things happening to you? Being the victim of a violent crime
# 16. WORRYF. How much, if at all, do you worry about the following things happening to you? Being the victim of a mass shooting
# 17. WORRYG. How much, if at all, do you worry about the following things happening to you? Having a personal health crisis
# 18. DESCRIBEA. How well, if at all, do each of the following phrases describe you? A religious person
# 19. DESCRIBEB. How well, if at all, do each of the following phrases describe you? A patriotic person
# 20. DESCRIBEC. How well, if at all, do each of the following phrases describe you? A supporter of the environment
# 21. DESCRIBED. How well, if at all, do each of the following phrases describe you? A supporter of women's rights
# 22. GUN. Do you personally own any guns (NOT including air guns, such as paintball, BB or pellet guns)?
# 23. GUN1. Does anyone else in your household own any guns (NOT including air guns, such as paintball, BB or pellet guns)?
# 24. SELFGUN. How many guns do you personally own (NOT including air guns, such as paintball, BB or pellet guns)?
# 25. GUNHOUSE. Do you ever use the gun or guns in your household, or not?
# 26. EVEROWN. Have you ever owned a gun at any point in your life, or have you never owned a gun?
# 27. COULDOWN. Which best describes you?
# 28. NEVEROWN. Which best describes you?
# 29. GUNTYPEOWNA. Do you currently or have you ever owned any of the following? A rifle
# 30. GUNTYPEOWNB. Do you currently or have you ever owned any of the following? A handgun or pistol
# 31. GUNTYPEOWNC. Do you currently or have you ever owned any of the following? A shotgun
# 32. EVERSHOT. Regardless of whether or not you own a gun, have you ever fired a gun?
# 33. SHOOTAGE. Just your best guess, at what age did you FIRST fire a gun, whether you owned it or not?
# 34. REASONGUNA. Below are some of the reasons that some people say they own guns. For each, please indicate whether it is a major reason, a minor reason, or not a reason why you own a gun. For protection
# 35. REASONGUNB. Below are some of the reasons that some people say they own guns. For each, please indicate whether it is a major reason, a minor reason, or not a reason why you own a gun. For hunting
# 36. REASONGUNC. Below are some of the reasons that some people say they own guns. For each, please indicate whether it is a major reason, a minor reason, or not a reason why you own a gun. For sport shooting, including target shooting and trap and skeet
# 37. REASONGUND. Below are some of the reasons that some people say they own guns. For each, please indicate whether it is a major reason, a minor reason, or not a reason why you own a gun. As part of a gun collection
# 38. REASONGUNE. Below are some of the reasons that some people say they own guns. For each, please indicate whether it is a major reason, a minor reason, or not a reason why you own a gun. For my job
# 39. IMPREASONGUN. Which of the following is the MOST IMPORTANT reason why you own a gun?
# 40. GUNIDENTITY. How important, if at all, is being a gun owner to your overall identity?
# 41. GUNFRIEND. As far as you know, how many of your friends, if any, own guns?
# 42. GUNSOCIETY. Do you feel that SOCIETY IN GENERAL tends to look at most gun owners in a positive way or a negative way?
# 43. GUNCOMMUNITY. Do you feel that PEOPLE IN YOUR COMMUNITY tend to look at most gun owners in a positive way or a negative way?
# 44. KNOWGUN. Which of the following best describes you?
# 45. HUNTFREQ. How often, if ever, do you go hunting?
# 46. SHOOTFREQ. How often, if ever, do you go shooting or to a gun range?
# 47. TRUSTFEDGOV. Generally speaking, how much of the time do you think you can trust the federal government to do what is right?
# 48. SOCTRUST. Generally speaking, would you say that most people can be trusted or that you can't be too careful in dealing with people?
# 49. GUNSAFE. Does having a gun in your household make you feel...
# 50. GUNSAFE2. Would having a gun in your household make you feel...
# 51. GUNCOURSES. Have you ever taken any gun safety courses such as weapons training, hunter safety or firearm safety?
# 52. GUNACCESS. Thinking about when you're at home, would you say there is a gun that is both loaded AND easily accessible to you...
# 53. GUNLOCKED1. In general, as far as you know, how many of the guns in your home would you say are kept in a locked place?
# 54. GUNLOADED1. In general, as far as you know, how many of the guns in your home would you say are kept loaded?
# 55. GUNLOCKED2. In general, is the gun in your home kept in a locked place, or not?
# 56. GUNLOADED2. In general, is the gun in your home kept loaded, or not?
# 57. GUNCONTRIBA. Here is a list of things some people say contribute to gun violence. How much, if at all, do you think each of the following contributes to gun violence in the country today? The ease with which people can LEGALLY obtain guns
# 58. GUNCONTRIBB. Here is a list of things some people say contribute to gun violence. How much, if at all, do you think each of the following contributes to gun violence in the country today? The ease with which people can ILLEGALLY obtain guns
# 59. GUNCONTRIBC. Here is a list of things some people say contribute to gun violence. How much, if at all, do you think each of the following contributes to gun violence in the country today? The amount of gun violence in movies and television
# 60. GUNCONTRIBD. Here is a list of things some people say contribute to gun violence. How much, if at all, do you think each of the following contributes to gun violence in the country today? Lack of economic opportunities
# 61. GUNCONTRIBE. Here is a list of things some people say contribute to gun violence. How much, if at all, do you think each of the following contributes to gun violence in the country today? The amount of gun violence in video games
# 62. GUNCONTRIBF. Here is a list of things some people say contribute to gun violence. How much, if at all, do you think each of the following contributes to gun violence in the country today? Family instability
# 63. GROWUPCOM. How would you describe the community where you spent the majority of time when you were growing up?
# 64. GROWUPVIOL. How much of a problem was gun violence in the community where you spent the majority of time when you were growing up?
# 65. GROWUPGUN1. Thinking about when you were growing up, as far as you know, were there ever any guns in your household or not?
# 66. GROWUPGUN2A. Would you say each of the following was a reason or was not a reason why there were guns in your household when you were growing up? For protection
# 67. GROWUPGUN2B. Would you say each of the following was a reason or was not a reason why there were guns in your household when you were growing up? For hunting
# 68. GROWUPGUN2C. Would you say each of the following was a reason or was not a reason why there were guns in your household when you were growing up? For sport shooting, including target shooting and trap and skeet
# 69. GROWUPGUN4. Thinking about the people in the community where you spent the majority of time when you were growing up...As far as you know, how many people owned guns?
# 70. GROWUPGUN5. How often, if ever, did you go hunting when you were growing up?
# 71. GROWUPGUN6. How often, if ever, did you go shooting or to a gun range when you were growing up?
# 72. GROWUPGUN7. How often, if ever, did you use air guns, such as paintball, BB or pellet guns when you were growing up?
# 73. OWNAGE. At what age did you first get your OWN gun?
# 74. GUNRESPNOKIDSA. Thinking about gun owners who DO NOT HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Keep all of their guns in a locked place
# 75. GUNRESPNOKIDSB. Thinking about gun owners who DO NOT HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Keep all of their guns unloaded
# 76. GUNRESPNOKIDSC. Thinking about gun owners who DO NOT HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Take gun safety courses
# 77. GUNRESPNOKIDSD. Thinking about gun owners who DO NOT HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Advise visitors that there are guns in the house
# 78. GUNRESPNOKIDSE. Thinking about gun owners who DO NOT HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Advise visitors with children that there are guns in the house
# 79. GUNRESPNOKIDSF. Thinking about gun owners who DO NOT HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Store guns and ammunition separately
# 80. GUNRESPNOKIDSG. Thinking about gun owners who DO NOT HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Keep their shooting skills up-to-date
# 81. GUNRESPKIDSA. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Keep all of their guns in a locked place
# 82. GUNRESPKIDSB. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Keep all of their guns unloaded
# 83. GUNRESPKIDSC. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Take gun safety courses
# 84. GUNRESPKIDSD. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Advise visitors that there are guns in the house
# 85. GUNRESPKIDSE. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Advise visitors with children that there are guns in the house
# 86. GUNRESPKIDSF. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Store guns and ammunition separately
# 87. GUNRESPKIDSG. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Keep their shooting skills up-to-date
# 88. GUNRESPKIDSH. Thinking about gun owners WHO HAVE CHILDREN IN THEIR HOME.How important do you think it is for them to: Talk to their children about gun safety
# 89. GUNSAFETYKIDS. For this question, please think about your child or children who are under 18. Have you ever talked with your child or children about gun safety?
# 90. CARRYGUN. How often, if ever, do you carry a handgun or pistol outside your home, not including times when you are transporting it?
# 91. NOCARRYGUN. And would you say you never carry a handgun or pistol because you don't want to or for some other reason?
# 92. GUNKILLF1. Which comes closer to your view, even if neither is exactly right?

gunPollData <- read.csv(destFile)