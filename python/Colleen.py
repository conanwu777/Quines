#this is a comment outside of program
def exc(s):
	exec(s)
if __name__ == "__main__":
	s = r"print('#this is a comment outside of program\ndef exc(s):\n\texec(s)\nif __name__ == \"__main__\":\n\ts = r\"' + s + '\"\n#this is a comment in main\n\texc(s)')"
#this is a comment in main
	exc(s)
