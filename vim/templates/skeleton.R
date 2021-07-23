#!/usr/bin/env Rscript
DOC = "This script illustrates how R can parse arguments if called from the command line."

### Script template from:
#   https://github.com/molgenis/molgenis-pipelines/wiki/Template-for-R-scripts  
###

# Define your constants here
    #-- const1 = "first"   --#
    #-- const2 = "second"  --#

# Retrieve command line parameters
    suppressPackageStartupMessages(library("argparse"))

    # Create parser object
    parser <- ArgumentParser(description = DOC)

    parser$add_argument("-c", "--count", type="integer", default=5, help="Number of random normals to generate [default %(default)s]", metavar="number")
    parser$add_argument("--generator", default="rnorm", help = "Function to generate random deviates [default \"%(default)s\"]")
    parser$add_argument("--mean", default=0, type="double", help="Mean if generator == \"rnorm\" [default %(default)s]")
    parser$add_argument("--sd", default=1, type="double", metavar="standard deviation", help="Standard deviation if generator == \"rnorm\" [default %(default)s]")
    parser$add_argument("-v", "--verbose", action="store_true", default=TRUE, help="Print extra output [default]")
    parser$add_argument("-q", "--quietly", action="store_false", dest="verbose", help="Print little output")
    # Please note: you can add 'required = TRUE' for parameters that are required

    # Parse command line parameters
    args <- parser$parse_args()

# Load your functions here
    #-- Example: source("main.functions.R") --#

# Print inputs only if cmnd-line parameters correct and verbose 'true' (in case of errors, use 'sterr()')
if (args$verbose) {
    write("You have used the following arguments:", stdout())
    write(paste("\t--count:  ", args$count), stdout())
    write("other parameters: ...", stdout())
    write("\nStart with analysis...\n", stdout())
}
# Do some operations based on user input
if("rnorm" == args$generator) {
    cat(paste(rnorm(args$count, mean=args$mean, sd=args$sd), collapse="\n"))
} else {
    cat(paste(do.call(args$generator, list(args$count)), collapse="\n"))
}
cat("\n")

