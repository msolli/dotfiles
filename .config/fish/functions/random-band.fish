function random-band
	ls ~/Downloads/musikk/itunes|perl -e 'srand; rand($.) < 1 && ($line = $_) while <>; print $line;'
end

function import-random
	echo (ls ~/Downloads/musikk/itunes|wc -l) igjen før denne

	set random_band (random-band)
	echo $random_band

	beet import ~/Downloads/musikk/itunes/$random_band

	echo mv \"$HOME/Music/Beets/$random_band\" \"$HOME/Music/iTunes/iTunes\ Media/Automatically\ Add\ to\ iTunes.localized/\"
	echo rm -rf \"$HOME/Downloads/musikk/itunes/$random_band\"
end
