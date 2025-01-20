# TODO: xelatex is hard coded to mac tex basic 2024
.PHONY: build
build:
#	/usr/local/texlive/2024basic/bin/universal-darwin/xelatex Pinglei_Guo_Resume.tex
	/usr/local/texlive/2024/bin/universal-darwin/xelatex Pinglei_Guo_Resume.tex

# for backwards compatibility
	cp Pinglei_Guo_Resume.pdf at15.en.pdf

# TODO(at15): building it requires Chinese Font
.PHONY: build-cn
build-cn:
	xelatex Pinglei_Guo_Resume.cn.tex
	
.PHONY: clean
clean:
	rm -f *.aux *.log *.out