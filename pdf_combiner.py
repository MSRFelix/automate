# put the program in the directory with all your pdfs that you want to merge into a single pdf

import glob
from PyPDF2 import PdfMerger

pdfs = glob.glob("*.pdf")
merger = PdfMerger()

for i in pdfs:
    merger.append(i)

merger.write("YourNewFileName.pdf")
merger.close()
