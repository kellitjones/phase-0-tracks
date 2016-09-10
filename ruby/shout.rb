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

class Baby
  include Shout
end

class Announcer
  include Shout
end

baby_brother = Baby.new
p baby_brother.yell_angrily("I want to go home, NOW")


track_announcer = Announcer.new
p track_announcer.yell_happily("A half mile to go. Whoa! Look at that horse move!!! This is going to be an amazing finish!")