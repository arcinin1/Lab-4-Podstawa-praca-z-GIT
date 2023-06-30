if [[ $1 == "-d" || $1 == "--date" ]]; then
    date
elif [[ $1 == "-l" || $1 == "--logs" ]]; then
	if [[ $2 == ""]]; then
		for i in {1..$2}; do
			touch log$i
			echo log$i > log$i
			echo skrypt.sh >> log$i
			data='date'
			echo "$data" >> log$i
		done
	else
		for i in {1..100}; do
			touch log$i
			echo log$i > log$i
			echo skrypt.sh >> log$i
			data='date'
			echo "$data" >> log$i
		done
	fi
elif [[ $1 == "-h" || $1 == "--help" ]]; then
	echo "Pomoc:"
	echo "-d, --date      Wyświetla aktualną datę."
	echo "-l, --logs      Tworzy pliki logów z nazwą pliku, nazwą skryptu i aktualną datą."
	echo "                Jeśli podasz drugi argument, zostanie utworzona określona liczba plików."
	echo "-h, --help      Wyświetla pomoc dotyczącą skryptu."
	echo "--init          Pobiera repozytorium Lab-4-Podstawa-praca-z-GIT."
	echo "-e, --error     Tworzy pliki błędów z nazwą pliku, nazwą skryptu i aktualną datą."
	echo "                Jeśli podasz drugi argument, zostanie utworzona określona liczba plików."
elif [[ $1 == "--init" ]]; then
	git clone https://github.com/arcinin1/Lab-4-Podstawa-praca-z-GIT.git
elif [[ $1 == "--error" || $1 == "-e" ]]; then
	mkdir error
	cd error
	if [[ $2 == ""]]; then
		for i in {1..$2}; do
			touch error$i
			echo error$i > error$i
			echo skrypt.sh >> error$i
			data='date'
			echo "$data" >> error$i
		done
	else
		for i in {1..100}; do
			touch error$i
			echo error$i > error$i
			echo skrypt.sh >> error$i
			data='date'
			echo "$data" >> error$i
		done
	fi
fi
