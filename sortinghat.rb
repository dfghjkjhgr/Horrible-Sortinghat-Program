require 'colorize'
quality = nil
purebloodWeights = 32
evilWeights = 32
studentPreferenceWeights = 32
# Ask user for traits using print to control new lines
print "Welcome. I am the sorting hat. Lets just get this dang thing done with.\n"
print "How"+" brave".blue+"are you? Put it on a scale from 1 to 100. "
bravery = [gets.to_i, "Gryffindor"]
print "How"+" loyal".blue+"are you? Put it on a scale from 1 to 100. "
loyalty = [gets.to_i, "Hufflepuff"]
print "How"+"wise".blue+" are you? Put it on a scale from 1 to 100. "
smarts = [gets.to_i,"Ravenclaw"]
print "How"+ " cunning".blue+ "are you? Put it on a scale from 1 to 100. "
cunning = [gets.to_i,"Slytherin"]
print "Are you"+ "pureblood ".blue+ "or not? Give me a yes or no answer."
pureblood = gets.to_s.downcase.strip
# Convert yes or no answer to boolean
print "Are you"+" evil".blue+" or not? Give me a yes or no answer. "
evil = gets.strip.downcase
print "Finally, what house do you want to be in? Put in G for\n" + "Gryffindor".red + ",S for "  + "Slytherin".green +  ",R for "  + "Ravenclaw".blue +  ",and H for "  + "Hufflepuff.".yellow
studentPreference = gets.strip
# Produce array to sort. 
if pureblood == "yes" || evil == "yes"
    cunning[0] += 32
end
if studentPreference == "g"
    bravery[0] += 32
end
if studentPreference == "s"
    cunning[0] += 32
end
if studentPreference == "h"
    loyalty[0] += 32
end
if studentPreference == "r"
    smarts[0] += 32
end
print "Processing data\n"
# sleep()
traits = [bravery, loyalty, cunning, smarts]
house = traits.max[1]
print house.to_s
print traits


    
   
