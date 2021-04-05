SHELL:=bash

.SUFFIXES: .dot .png

PNG:= minikube.png my-namespace-rbac.png namespaces.png

all: $(PNG) 

html: 
	jupyter-nbconvert *.ipynb --to html

.dot.png:
	dot -Tpng $< -o $@

clean:
	rm -f *html $(PNG)
