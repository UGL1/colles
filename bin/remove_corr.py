import sys, os


def compile(f: str) -> None:
    os.system("xelatex -shell-escape -synctex=1 -interaction=batchmode " + f )
    f = f[:-3]
    for ext in ('aux','log','synctex.gz'):
        os.system("del "+f+ext)



def remove_corr(f: str) -> None:
    with open(f, "rt", encoding="utf8") as rf:
        data = rf.readlines()
    with open(f[:-4] + "-eleve.tex", "wt", encoding="utf8") as wf:
        put = True
        for line in data:
            if line.startswith("\\corr"):
                put = False
            elif line.startswith("\\exo"):
                put = True
            if put or line.startswith("\\end{document}"):
                wf.write(line)
    compile(f[:-4] + "-eleve.tex")

for file_name in sys.argv[1:]:
    remove_corr(file_name)

