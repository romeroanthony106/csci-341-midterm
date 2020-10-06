import random, string
import re

def parts(data):
    # https://www.daniweb.com/programming/software-development/threads/338875/how-to-split-string-with-ignoring-commas-between-quotes
    regex = re.compile(r"\\.|[\"' ]", re.DOTALL)
    delimiter = ''
    compos = [-1]
    for match in regex.finditer(data):
        g = match.group(0)
        if delimiter == '':
            if g == ' ':
                compos.append(match.start())
            elif g in "\"'":
                delimiter = g
        elif g == delimiter:
            delimiter = ''
    # you may uncomment the next line to catch errors
    #if delimiter: raise ValueError("Unterminated string in data")
    compos.append(len(data))
    return [ data[compos[i]+1:compos[i+1]] for i in range(len(compos)-1)]

infile = "hack.s"
outfile = "output.s"

lines = []
with open(infile, 'r') as f:
    lines = f.readlines()


lines = [line.strip().rstrip() for line in lines]
lines = [line for line in lines if len(line) != 0]

newlines = []
for line in lines:
    newline = []
    wasspace = False
    for character in line:
        if wasspace and character.isspace():
            wasspace = True
            continue
        wasspace = character.isspace()
        newline.append(character)
    newlines.append("".join(newline))

lines = newlines

newlines = []
for line in lines:
    words = parts(line)
    newline = []
    spacer = '\t'
    for word in words:
        if word.isspace():
            continue
        newline.append(word + spacer)
        spacer = ' '
    newlines.append("".join(newline).strip().rstrip())
lines = newlines


# # Each line is not without excess whitespace, and empty lines have been removed
# newlines = []
# for line in lines:
#     words = parts(line)
#     newline = []
#     for word in words:
#         if word.isspace():
#             continue
#         spacer = random.choice((' ', '\t'))
#         newline.append(spacer * random.randint(1, 10))
#         newline.append(word)
#     newlines.append("".join(newline).rstrip())
# lines = newlines

with open(outfile, 'w') as f:
    for line in lines:
        f.write(line + '\n')
