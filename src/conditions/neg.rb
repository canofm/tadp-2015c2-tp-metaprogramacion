module Neg
  def neg(*conditions)
    proc {|method| conditions.none? {|condition| condition.call(method)}}
  end
end