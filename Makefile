# Makefile for generating the report
# Makefile for automating data analysis and report generation

# Variables
R_SCRIPT = Rscript
RMD_FILE = Report.Rmd
OUTPUT_HTML = Report.html

# Targets
all: $(OUTPUT_HTML)

# Step 1: Generate plot
plot:
	$(R_SCRIPT) Code/01_make_plot.R

# Step 2: Render report
$(OUTPUT_HTML): $(RMD_FILE)
	$(R_SCRIPT) Code/02_render_report.R

# Clean up generated files (if necessary)
clean:
	rm -f $(OUTPUT_HTML) Output/plot.png

