#rotation_cipher_cracker

# Rotation ciphers are very vulnerable to brute force attacks. There are only 25 possible ways to decrypt the message.

# Example Encoded Message:ymjxvznwwjqnxhzyj

# Possible Decoded Messages:

# znkywaoxxkroyiazk, aolzxbpyylspzjbal, bpmaycqzzmtqakcbm,
# cqnbzdraanurbldcn, drocaesbbovscmedo, espdbftccpwtdnfep,
# ftqecguddqxueogfq, gurfdhveeryvfphgr, hvsgeiwffszwgqihs,
# iwthfjxggtaxhrjit, jxuigkyhhubyiskju, kyvjhlziivczjtlkv,
# lzwkimajjwdakumlw, maxljnbkkxeblvnmx, nbymkocllyfcmwony,
# ocznlpdmmzgdnxpoz, pdaomqennaheoyqpa, qebpnrfoobifpzrqb,
# rfcqosgppcjgqasrc, sgdrpthqqdkhrbtsd, thesquirreliscute,
# uiftrvjssfmjtdvuf, vjguswkttgnkuewvg, wkhvtxluuholvfxwh,
# xliwuymvvipmwgyxi
# If you scan through the list you will see only a few that contain an english word longer than two characters. thesquirreliscute is the only one that could be completely seperated into english words to form the message "the squirrel is cute".

# Your job for this kata is to make a function that will give all possible decoded messages given the encoded message and suspected contents.

# decode('ymjxvznwwjqnxhzyj','squirrel') # returns ['thesquirreliscute']
# decode('lzwespnsdmwakafxafalq','max')  # returns ['maxftqotenxblbgybgbmr', 'themaxvalueisinfinity']

def decode(msg,contents)
  
abc=''
26.times {|i| abc<<96+i+=1}
abc=abc.split(//)
 
#receiving the decoded string with a shift%26
# msg.split(//).map {|i| abc[(abc.index i)+(shift%26)]}*''
#end

decoded=[]
26.times {|x|decoded << msg.split(//).map {|i| abc[((abc.index i)+x)%26]}*''}
b=[]
decoded.find_all {|i| b<<i if i.scan(contents)!=[]}
  
end