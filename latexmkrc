@default_files = ("main.tex");
$out_dir = "output";

# Use pdflatex
$pdf_mode = 1;

# No postscript or dvi
$postscript_mode = $dvi_mode = 0;

# Generate .fls File to keep track of files
$recorder = 1;

# Clean .bbl files
$bibtex_use = 2;

# Generated extensions to be cleaned
@generated_exts = qw(aux bcf blg fls log out toc run.xml synctex.gz);

$pdflatex = 'internal mypdflatex %D %O %S';

sub mypdflatex {
	use File::Copy qw(copy);

	my $file = shift;
	my ($base_name, $path) = fileparse( $file );
	my $synctexfile = $path . ($base_name =~ s/\.[^.]+$//r) . ".synctex.gz";
	my $logfile = $path . ($base_name =~ s/\.[^.]+$//r) . ".log";
	my $new_dir = $path . "../";
	my @args = @_;
	unshift(@args, "-synctex=1");

	$return = system 'pdflatex', @args;

	copy $file, $new_dir;
	copy $synctexfile, $new_dir;
	copy $logfile, $new_dir;

	return $return;
}
