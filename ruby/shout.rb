# module Shout
# def self.yell_angrily(words)
#     words + "!!!" + " :("
# end

# def self.yell_happily(words)
#     words + "!!!" + " :)"
# end
# end
# ------test things out-----
# Shout.yell_angrily("Im upset")
# Shout.yell_happily("Im happy")

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Kid
  include Shout
end

class Cheerleader
  include Shout
end

baby_brother = Kid.new
p baby_brother.yell_angrily("I want to go home, NOW")


cheerleading_captain = Cheerleader.new
p cheerleading_captain.yell_happily("Give me a 'y', Give me an 'a', Give me a 'y'. What does that spell? YAY, Goooo Team")