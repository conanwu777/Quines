FILE = "f = open('Grace_kid.py', 'w')"
EXEC = "exec(FILE)%cexec(STR)%cf.close()" % (10, 10)
STR = r"print('FILE = \"' + FILE + '\"\nEXEC = \"exec(FILE)%cexec(STR)%cf.close()\" % (10, 10)\nSTR = r\"' + STR + '\"\nexec(EXEC)\n#child produced', file = f)"
exec(EXEC)
#child produced
