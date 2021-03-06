#' An environment for storing CollapsABEL package local variables
#' 
#' .collapsabel_dir CollapsABEL home directory
#' 
#' .collapsabel_gwas CollapsABEL gwas directory
#' 
#' .collapsabel_gcdh CollapsABEL GCDH analysis directory
#' 
#' .assoc_header Plink .assoc file headers
#' 
#' .qassoc_header Plink .qassoc file headers
#' 
#' .logistic_header Plink .assoc.logistic file headers
#' 
#' .logistic_header_default Columns from plink .assoc.logistic file headers that are used by default
#' 
#' .linear_header Plink .assoc.linear file headers
#' 
#' .linear_header_default Columns from plink .assoc.linear file headers that are used by default
#' 
#' .plink_out_ext Plink output extensions
#' 
#' .plink_stdout Plink stdout
#' 
#' .plink_stderr Plink stderr
#' 
#' @name collenv
#' @export 
collenv <<- new.env()

collenv$.collapsabel_dir = file.path(Sys.getenv("HOME"), ".collapsabel")
collenv$.collapsabel_gwas = file.path(collenv$.collapsabel_dir, "gwas")
collenv$.collapsabel_gcdh = file.path(collenv$.collapsabel_dir, "gcdh")
collenv$.logistic_header = c( "CHROM", "POS", "ID", "REF", "ALT", "A1", "TEST", "OBS_CT", "BETA", "SE", "T_STAT", "P")
collenv$.logistic_header_default = c("OBS_CT", "BETA", "T_STAT", "P")
collenv$.linear_header = collenv$.logistic_header
collenv$.linear_header_default = collenv$.logistic_header_default
collenv$.plink_out_ext = c("linear")
collenv$.plink_stdout = FALSE
collenv$.plink_stderr = FALSE


#' Alpha-numeric characters
#' @export
alphaNumeric = c(letters, LETTERS, as.character(0:9))

globalVariables(
		c(
				"collenv", 
				"alphaNumeric", 
				"x", "y", "xend", "yend", 
				"XPOS", "MLOGP", "BP", "COLOR", "ACHR",
				"p", "geno_pool", "group", "id"
		)
)