# Makefile for generating the report

# Variables
PLOT_SCRIPT = 01_make_plot.R
RENDER_SCRIPT = 02_render_report.R
REPORT = Report.Rmd
OUTPUT_PNG = Output/plot.png
OUTPUT_REPORT = Report.html

# Default target
all: $(OUTPUT_REPORT)

# Target to generate plot
$(OUTPUT_PNG): $(PLOT_SCRIPT)
	Rscript $(PLOT_SCRIPT)

# Target to generate the report
$(OUTPUT_REPORT): $(RENDER_SCRIPT) $(OUTPUT_PNG) $(REPORT)
	Rscript $(RENDER_SCRIPT)

# Clean up generated files
clean:
	rm -f $(OUTPUT_PNG) $(OUTPUT_REPORT)

.PHONY: all clean
