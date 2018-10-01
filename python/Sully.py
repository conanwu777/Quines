import os
STR = r"print ('import os\nSTR = r\"' + STR + '\"\ni = %d\nif i <= 0:\n\texit(1)\nif __file__ != \"Sully.py\":\n\ti -= 1\nf = open(\"Sully_%%d.py\" %% i, \"w\")\nexec(STR %% i)\nf.close()\nos.system(\"python3 Sully_%%i.py\" %% i)', file = f)"
i = 5
if i <= 0:
	exit(1)
if __file__ != "Sully.py":
	i -= 1
f = open("Sully_%d.py" % i, "w")
exec(STR % i)
f.close()
os.system("python3 Sully_%i.py" % i)
