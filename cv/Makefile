.PHONY: build
build:
	xelatex Pinglei_Guo_Resume.tex
# for backwards compatibility
	cp Pinglei_Guo_Resume.pdf at15.en.pdf

# TODO(at15): building it requires Chinese Font
.PHONY: build-cn
build-cn:
	xelatex Pinglei_Guo_Resume.cn.tex
	
.PHONY: clean
clean:
	rm -f *.aux *.log *.out