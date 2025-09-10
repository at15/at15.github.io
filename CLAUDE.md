# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website (https://at15.me) and resume repository for @at15. The website uses a minimal HTML/CSS design based on http://jgthms.com/web-design-in-4-minutes, and includes LaTeX resume templates.

## Commands

### Website Development
- `make start` - Start a local Python HTTP server on port 8000 to preview the website
- Alternative: `python3 -m http.server 8000`

### Resume Building (LaTeX)
- `cd cv && make build` - Build the English resume PDF using xelatex
- `cd cv && make clean` - Clean auxiliary LaTeX build files (.aux, .log, .out)
- Note: xelatex path is hardcoded for macOS TeX installation at `/usr/local/texlive/2024/bin/universal-darwin/xelatex`

## Repository Structure

- `index.html` - Main website file (simple single-page design)
- `cv/` - Resume LaTeX source files and PDFs
  - `Pinglei_Guo_Resume.tex` - English resume source
  - `Pinglei_Guo_Resume.pdf` - Generated English resume
  - `simple-cv.cls` - Custom LaTeX class for the resume template
  - `fonts/` - Custom fonts used in the resume

## Development Notes

- The website is a single static HTML file requiring no build process
- Resume builds require TeX Live installation with xelatex
- The resume PDF is also copied to `at15.en.pdf` for backwards compatibility