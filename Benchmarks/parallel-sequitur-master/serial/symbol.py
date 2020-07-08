#from guard import Guard
#from rule import Rule
#from nonTerminal import NonTerminal
#from terminal import Terminal

class Symbol(object):
  
  numTerminals = 100000
  prime = 2265539

  theDigrams = {}
  value = 0
  p, n = None, None
  
  def __init__(self):
    self.p = None
    self.n = None

  def join(self,left, right):
    if(left.n != None):
      left.deleteDigram()
    left.n = right
    right.p = left

  def insertAfter(self,symToInsert):
    #print "insertAfter: %d" % Rule.numRules
    self.join(symToInsert,self.n)
    self.join(self,symToInsert)

  def cleanUp(self):
    pass

  # might be fixed - should check this
  def deleteDigram(self):
    if(self.n.isGuard()):
      return
    
    dummy = self.theDigrams.get(self, None)
    if(dummy == self):
      self.theDigrams.pop(self)

  def isGuard(self):
    return False

  def isNonTerminal(self):
    return False

  # might be fixed? may want to use get
  def check(self):
    print "in CHECK"
    found = None
    if(self.n.isGuard()):
      print "asdfas"
      return False
    if(not self in self.theDigrams):
      print self.value
      r = ""
      for k,v in self.theDigrams.items():
        print k.value + " " + v.value 
      print "1231"
      found = self.theDigrams[self] = self
      return False
    found = self.theDigrams[self]
    print found.n
    print self
    if found.n != self:
      match(self, found)
    return True

  # should check this
  def substitute(self, rule):
    self.cleanUp()
    self.n.cleanUp()
    r = nonTerminal(rule)
    self.p.insertAfter(r)
    if(not self.p.check()):
      self.p.n.check()

  # should check this
  def match(self, newDigram, matchingSymbol):
    print "in MATCH"
    r, first, second, dummy = None, None, None, None
    if matchingSymbol.p.isGuard() and matchingSymbol.n.n.isGuard():
      # reuse existing rule
      r = (matchingSymbol.p).r
      newDigram.substitute(r)
    else:
      # create a new rule
      r = Rule()
      try:
        first = newDigram.clone()#(symbol)newDigram.clone()
        second = newDigram.n.clone()#(symbol)newDigram.n.clone()
        r.theGuard.n = first
        first.p = r.theGuard
        first.n = second
        second.p = first
        second.n = r.TheGuard
        r.theGuard.p = second

        dummy = theDigrams[first] = first
        matchingSymbol.substitute(r)
        newDigram.substitute(r)
      except:
        print "Something broke in match: ", sys.exc_info()[0]
        raise

    # check for underused rule
    if r.first().isNonTerminal() and r.first().r.count == 1:
      (r.first()).expand()

  def hashCode(self):
    code = ((21599*self.value) + (20507*self.n.value))
    code = code % self.prime
    return code

  # Test if two digrams are equal
  # Do NOT use to compare two symbols
  def equals(obj):
    return ((self.value == (obj).value) and (self.n.value == (obj).n.value))
