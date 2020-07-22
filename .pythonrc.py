type(exit).__repr__ = lambda self: self()

def pp(o):
  import ppprint
  pprint.pprint(o)
