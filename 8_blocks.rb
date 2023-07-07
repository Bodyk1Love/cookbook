# 8.2 Writing a Method That Accepts a Block
def call_twice  
  puts "I'm about to call your block."
  yield  
  puts "I'm about to call your block again."
  yield
end

call_twice { puts "Hi, I'm a talking code block." }
# I'm about to call your block.
# Hi, I'm a talking code block.
# I'm about to call your block again.
# Hi, I'm a talking code block.

def repeat(n)
  if block_given?    # <--- !!!
    n.times { yield }
  else
    raise ArgumentError.new("I can't repeat a block you don't give me!")
  end
end