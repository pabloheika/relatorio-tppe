# Makefile para compilar o documento UnBTeX

# --- Variáveis ---
# Arquivo TeX principal
MAIN_TEX_FILE = unbtex-example.tex
# Nome base do arquivo (sem a extensão .tex)
BASENAME = $(basename $(MAIN_TEX_FILE))
# Comandos
PDFLATEX = pdflatex
BIBTEX = bibtex

# --- Alvos (Targets) ---

# Alvo padrão: compila o documento
all: $(BASENAME).pdf

# Alvo para criar o PDF.
# Depende do arquivo .tex principal e do arquivo .bib de referências.
$(BASENAME).pdf: $(MAIN_TEX_FILE) unbtex-example/referencias.bib
	@echo "Iniciando a compilação do documento..."
	$(PDFLATEX) $(MAIN_TEX_FILE)
	$(BIBTEX) $(BASENAME)
	$(PDFLATEX) $(MAIN_TEX_FILE)
	$(PDFLATEX) $(MAIN_TEX_FILE)
	@echo "Compilação concluída! O arquivo $(BASENAME).pdf foi gerado."

# Alvo para instalar dependências (requer sudo)
deps:
	@echo "Instalando dependências do sistema (TeX Live)..."
	sudo apt-get update && sudo apt-get install -y texlive-full

# Alvo para limpar os arquivos gerados
clean:
	@echo "Limpando arquivos gerados pela compilação..."
	rm -f $(BASENAME).aux
	rm -f $(BASENAME).bbl
	rm -f $(BASENAME).blg
	rm -f $(BASENAME).brf
	rm -f $(BASENAME).lof
	rm -f $(BASENAME).log
	rm -f $(BASENAME).lot
	rm -f $(BASENAME).nlo
	rm -f $(BASENAME).out
	rm -f $(BASENAME).pdf
	rm -f $(BASENAME).toc
	rm -f *-converted-to.pdf

# Alvo para reconstruir o projeto (limpa e compila)
rebuild: clean all

# Declara os alvos que não são arquivos
.PHONY: all deps clean rebuild
