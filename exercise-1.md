# Exercise-1
---
_version_: 0.0.3
_keywords_: GNU/Linux, git, markdown, apt, sudo, touch, cd, ls, cat, man, grep, cut, paste, join, tar, sort, tsv

## Część teoretyczna
---
Poszukaj odpowiedzi na poniższe pytania żeby lepiej zrozumieć podstawowe pojęcia dotyczące Linuxa oraz jego historię oraz architekturę. Na większość pytań można odpowiedzieć jednym zdaniem a odpowiedzi znajdziesz zapewne nie dalej niż w trzeciej odpowiedzi googla, jednak zachęcam do zapoznania się z portalami opisanymi w sekcji ‘Pomoce’. Jeżeli chciałbyś/chciałabyś sprawdzić i omówić swoje odpowiedzi, zanotuj je prosze oraz przekaż autorowi (ale nie jest to konieczne).

###### Pytania
 1. Skąd się wzięło i co oznacza określenie GNU/Linux?
 2. Kto jest twórcą gita oraz jądra Linuxa?
 3. Czym jest GNU oraz jak GNU ma się do Linuxa? Czy GNU może funkcjonować bez Linuxa? Czy Linux może funkcjonować bez GNU?
 4. Co oznacza określenie dystrybucja (w kontekście Linuxa)? Czym różnią się od siebie takie dystrybucje jak Arch Linux i Ubuntu?
 5. Czym jest terminal (w kontekście Linuxa)?
 6. Jaka jest różnica pomiędzy terminalem a konsolą?
 7. Czym jest wirtualny terminal?
 8. Wyjaśnij czym jest shell (powłoka systemowa) oraz CLI. Jaką powłoka systemowa jest domyślnie używana w Ubuntu? Czy można ją zmienić?
 9. Czym jest graphical shell (powłoka graficzna) i jak się ma do X Window System? Jaka domyślna powłoka graficzna dostępna jest w Ubuntu? Czy można ją zmienić?
 10. Czy Bash jest językiem programowania?

###### Pomoce
 1. https://www.quora.com/ - idealne źródło wiedzy dla początkujących osób. Część pytań, choć trzeba zaznaczyć że nie wszystkie, doczekało się bardzo przemyślanych odpowiedzi, które w prosty ale precyzyjny sposób odpowiadają na pytanie.
http://tldp.org/guides.html - The Linux Documentation Project, jak sama nazwa wskazuje jest projektem którego celem jest dostarczenie dokumentacji dla Linuxa, i faktycznie jest to dobre źródło wiedzy. 
 2. https://wiki.archlinux.org/ - Wiki przygotowane dla i przez użytkowników Arch Linuxa (dystrybucja Linuxa znana ze swego ascetyzmu). Dobre źródło wiedzy dla zaawansowanych użytkowników. 
 3. https://en.wikipedia.org/wiki/GNU oraz https://www.google.com

###### Dłuższe lektury
 - Neal Stephenson - In the Beginning... Was the Command Line

## Część praktyczna
--- 
Poniższej znajdziesz wprowadzenie do kilku najpopularniejszych narzędzi używanych w Linuxie. Jako że ta część ćwiczenia ma charakter praktyczny poproszę Cię o stworzenie małych skryptów (programów) lub odpowiedzi które umieścisz w pliku README. Wszystkie poniższe polecenia powinieneś/powinnaś wykonać w terminalu (emulatorze terminala). W Ubuntu terminal otworzysz za pomocą skrótu klawiszowego [ctrl] + [alt] + [t]. Choć początkowo mały czarny prostokąt ze słowami zamiast ikonek wydaje się odrobinę dziwny po jakimś czasie zwraca zainwestowany w niego czas z nawiązką. 

Poniżej znajdziesz kilka przydatnych komend, które pozwolą Ci poruszać się po strukturze katalogów (myśl o terminalu tak jak myślisz o windows explorerze, a o poniższych komendach jak o kliknięciach w poszczególne pliki tak jak robisz to w windows explorerze):
 - `ls jakis_katalog` - wyświetl zawartość katalogu jakis_katalog. Jeżeli podstawisz znak ‘.’ zamiast nazwy ‘jakis_katalog’ wówczas zobaczysz zawartość katalogu w którym obecnie się znajdujesz. Jeżeli podstawisz znaki ‘..’ zamiast nazwy ‘jakis_katalog’ wówczas zobaczysz zawartość katalogu nadrzędnego do tego w którym obecnie się znajdujesz.
 - `ls -l jakis_katalog` - wyświetl zawartość katalogu pokazując pliki oraz ich atrybuty (czas utworzenia, rozmiar, prawa dostępu, autora)
 - `ls -1 jakis_katalog` - wyświetl zawartość katalogu pokazując pliki w kolumnach (zamiast linii jak robi to polecenie ls bez argumentów)
 - `cd nowy_katalog` - przejdż  do ścieżki (katalogu) o nazwie nowy_katalog. Katalog ten musi sie znajdować
 - `mkdir nowy_folder` - stwórz nowy katalog o nazwie nowy_folder
 - `cat przykladowy_plik` - wyświetl zawartość pliku o nazwie przykladowy_plik

Zanim zaczniesz, ostatnia praktyczna porada. Jeżeli nie będziesz wiedział/wiedziała jak wykonać zadanie poszukaj odpowiedzi w google myśląc nie o narzędziu a o tym co chcesz osiągnąć, np. ‘Linux how to join two files’, ‘Linux how to rename file” etc.

### README & Markdown
Pamięć ludzka bywa zawodna, dlatego jedną z pierwszych rzeczy które powinieneś/powinnaś nauczyć się robić to pisanie plików README w każdym projekcie który zaczynasz. Plik README skierowany jest do każdego (również do Ciebie) kto chce dowiedzieć się jak może uruchomić i skorzystać z projektu który znajduje się w danym katalogu. Na potrzeby tego projektu stworzymy plik README, który bardziej będzie przypominał dziennik, co nie stanowi raczej codziennej praktyki (choć nie oznacza że tak nie można). Choć sam plik README nie wymusza formatu, to na potrzeby tego ćwiczenia skorzystamy z formatu markdown (zajrzyj do sekcji ‘Pomoce’ aby dowiedzieć się więcej).

###### Zadanie
 1. Stwórz plik README.md w którym będziesz notował/notowała postęp prac w wykonywaniu kolejnych zadań. Celem pliku README.md jest opisanie jak działają polecenia tak żebyś Ty mógł/mogła z nich skorzystać, należy mieć jednak na uwadze że plik ten będzie też czytany przez innego użytkownika (nie wiesz czy będzie bardziej czy mniej doświadczony niż Ty).

###### Pomoce
 1. Kurs online tłumaczący w jakim celu piszemy dokumentację oraz tłumaczący podstawy Markdowna: https://classroom.udacity.com/courses/ud777
 2. Internetowy edytor markdowna: https://dillinger.io/ (żeby można było zobaczyć czy Twój plik README.md formatuje się poprawnie)

### man
Narzędzie wyświetlające dokumentację (podręcznik) na temat określonego polecenia. Częstokroć man jest najszybszym (i najskuteczniejszym) sposobem pozwalającym dowiedzieć się jak jakieś polecenie działa i jakie posiada opcje (argumenty).

###### Jak używać
	man [command]
	(wciśnięcie klawisza ‘q’ [od quit] powoduje wyjście z mana.)

###### Przykłady
	$ man grep

### sudo
Polecenie uruchamiające inne polecenie (które po nim następuje) z prawami administratora systemu. Ze względów bezpieczeństwa w systemie Linux konto na którym pracujesz na codzień nie powinno być kontem administratora systemu. Ograniczenie dostępu do konta administratora pozwala m.in. ograniczyć dostęp do poufnych danych oraz częściowo zabezpiecza przed instalowaniem złośliwego oprogramowania. Ze względu na możliwe konsekwencje stosuj odpowiedzialnie. Nie wszystkie polecenia które znajdziesz w internecie są pisane przez przyjaznych internautów, dlatego postaraj się zrozumieć co robisz zanim poprzedzić jakiekolwiek polecenie poleceniem sudo (przykładowo `sudo wget http://... -O | bash` może wykonać ‘dowolny’ kod na Twoim urządzeniu).

###### Jak używać
	sudo [command]

###### Przykłady
	$ sudo true
	$ sudo apt install chromium

###### Zadanie
 1. Wykonaj polecenie `sudo true`. Co się wydarzyło? Polecenie `sudo true` można wykonać w celu sprawdzenia czy użytkownik ma prawa administratora, dlaczego? Odpowiedź zanotuj w README.md

### apt
Apt to domyślny menadżer pakietów w Ubuntu. Pozwala instalować oraz usuwać programu z Twojego systemu.

###### Jak używać
	sudo apt install [package]

###### Zadanie
 1. Zainstaluj gita oraz opisz proces instalacji w pliku README.md.

### git
System kontroli wersji, albo jak woli autor “the stupid content tracker”. Narzędzie pozwalające śledzić zmiany wykonane na plikach. Jedną z zalet gita jest umożliwienie pracy wielu osobom nad tym samym projektem bez obawy o to że pliki znikną lub zostaną nadpisane. My, ponieważ nie pracujemy jeszcze z innymi osobami, skorzystamy z innej funkcji gita, którą jest możliwość rejestrowania naszego postępu oraz możliwość przywrócenia poprzedniego stanu. Pomyśl o tym jak o zapisie gry w grze komputerowej. Zapis wykonujesz zazwyczaj a) przed ruchem co do którego obawiasz się że może się nie udać, lub b) “bo dawno nie robiłem zapisu”.

Do podstawowych poleceń których będziemy chcieli użyć należą:
 - `git init .` - polecenie tworzy repozytorium
 - `git status` - polecenie pozwala wyświetlić obecny status repozytorium. Jeżeli w repozytorium znajdąją się jakieś niezapisane pliki zostaną wyświetlone w sekcji ‘Untracked files’.
 - `git add plik1 plik2 ...` - polecenie dodaje niezapisane (untracked) pliki
 - `git commit -m ‘tresc wiadomosci’` - polecenie zapisuje pliki 

###### Zadania
 1. Stwórz projekt dla naszego ćwiczenia o nazwie exercise-1 używając polecenia `git init`.
 2. Dodaj plik README.md do naszego repozytorium używając polecenia `git add`. Polecenie add przyjmuje nazwy plików jako kolejne argumenty.
 3. Zrób pierwszy commit używając polecenia `git commit`. Polecenie commit wymaga podania treści wiadomości którą można wpisać podając argument -m ‘treść wiadomości’.

###### Pomoce
 1. https://git-scm.com/doc - zobacz filmy

### Format TSV
Format zapisu danych charakteryzujący się tym że dane przechowywane są w wierszach oddzielonych od siebie znakiem tabulacji. Nagłówek (który jest jednocześnie pierwszym wierszem), definiuje/opisuje zawartość kolumny.

###### Zadania
 1. Stwórz plik w formacie TSV o nazwie class-members.tsv który zawiera następujące kolumny: imię, nazwisko, pesel, płeć, kolor_oczu. Nazwy kolumn powinny stanowić pierwszy wiersz oraz zostać poprzedzone znakiem ‘#’, dla odróżnienia ich od danych. Następnie wprowadź około dziesięć osób (możesz zmyślić część danych). Po stworzeniu, plik należy dodać do repozytorium exercise-1 (git add) a następnie go zakomitować (git commit - pamiętaj o wypełnieniu komunikatu komita).

###### Pomoc
 1. https://en.wikipedia.org/wiki/Tab-separated_values
 2. Aby stworzyć plik użyj edytora gedit.

### head
Head jest prostym narzędziem które pozwala wyświetlić n (n jest argumentem) pierwszych linii z danego pliku lub strumienia (potoku, będzie o tym za chwile). Najczęściej korzystamy z tego narzędzia w potokach, np. żeby wyświetlić tylko pierwszy element (head -n 1).
 
###### Zadanie
1. Wyświetl pierwsze 5 osób z pliku class-members.tsv a wynik zapisz w pliku class-members-first5.tsv (użyj przekierowania do pliku). Użyte polecenie zanotuj w README.md

### tail
Tail jest bratem bliźniakiem narzędzia head. Kiedy head wyświetla początek pliku, tail wyświetla jego koniec.

###### Zadanie
Wyświetl ostatnie 5 osób z pliku class-member.tsv a wynik zapisz w pliku class-member-last5.tsv (użyj przekierowania do pliku). Użyte polecenie zanotuj w README.md

### Przekierowania i potoki (>, >>, |)
Przekierowania i potki pozwalają przekazywać wyjście jednego programu do innego programu. Każdy program (nie musi tak być, ale narzędzia o których piszemy taką własność posiadają) przyjmuje coś na wejście i zazwyczaj produkuje również jakiś wynik. Operator | pozwala przekazywać wyjście na wejście innego programu. Operator > zapisuje wyjście programu do pliku (jeżeli plik o podanej nazwie istnieje, zostanie on nadpisany!). Operator >> dopisuje do pliku dane, a jeżeli plik nie istniał tworzy go i wpisuje dane. Przykład (zapewne odrobinę za bardzo abstrakcyjny) opisujący te operatory mógłby wyglądać tak:

    wczytaj plik1 | wez_naglowek -tylko_dwie_linie | zamień a na ą > ładny_plik

###### Zadania
 1. Przekieruj nagłówek (pierwsza linia) pliku class-members.tsv do pliku o nazwie familly-members.tsv. Przy pomocy gedita edytuj plik familly-members.tsv dodając do niego trzy osoby (Dorotę, Asię oraz Justynę). Plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś do stworzenia pliku zanotuj w README.md.
 2. Stwórz nowy plik o nazwie known-people.tsv (polecenie `man touch`) a następnie wypełnij go zawartością plików class-members.tsv oraz familly-members.tsv. Plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.

###### Pomoce
 1. http://tldp.org/LDP/intro-linux/html/sect_05_01.html

### grep
Grep pozwala przeszukać pliki w poszukiwaniu pewnego wyrażenia. Wyrażenie może być po prostu pewnym ciągiem znaków, ale (i w tym cała siła) może być to wyrażenie regularne (zobacz film jeżeli nie wiesz czym są wyrażenia regularne).

###### Przykłady
 1. `grep "anakonda" pan_tadeusz.txt` - znajdzie wszystkie słowa anakonda w pliku pan_tadeusz.txt (o ile takie słowo występuje w tym pliku. 
 2. `grep '^papa.*jo$' slownik-jezyka-polskiego.txt` - znajdzie dwa słowa: papajo oraz papagajo.
 3. `grep -Ril "gdzie to było" moje_pliki` - wyświetli wszystkie pliki które zawierają ciąg "tekst" w katalogu moje_pliki. Jest to potężne narzędzie, na sytuacje kiedy wiesz że kiedyś to widziałeś/widziałaś ale nie pamiętasz gdzie. Aby łatwiej zapamiętać parametry, proponuję mnemotechnikę "grep -Ril" można przeczytać jako gril (*gr*ep -R*il*), a więc można sobie coś ugrilować :) 

###### Zadania
 1. Wyświetl wszystkie osoby których imię to Marcin. Polecenie którego użyłeś/użyłaś zanotuj w README.md.
 2. Wyświetl wszystkie osoby które mają niebieskie oczy. Wynik zapisz w pliku blue-eyed-members.tsv, plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.

###### Pomoce
 1. http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_04_02.html opis i przykłady użycia grepa
 2. https://www.youtube.com/watch?v=DRR9fOXkfRE 11 minutowy film o regexach

### sort
Sort pozwala sortować... Jedyne czego musisz się nauczyć to opcje -r (która odwraca kolejność sortowania) oraz opcja -k (która sortuje plik ze względu na wybraną kolumnę).

###### Zadnia
 1. Przesortuj plik class-members.tsv ze względu na zawartość kolumny #kolor_oczu w kolejności rosnącej (od 0 do 9, od a do z). Wynik zapisz w pliku class-members-eye-color-sorted-ascending.tsv, plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.
 2. Przesortuj plik class-members.tsv ze względu na zawartość kolumny #kolor_oczu w kolejności malejącej (od 9 do 0, od z do a). Wynik zapisz w pliku class-members-eye-color-sorted-descending.tsv, plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.

### cut
Cut pozwala wycinać wybrane kolumny z pliku (opcja -f). Właśnie od tego polecenia wzięło się określenie pociąć kogoś w paski. W starocerkiewnosłowiańskim słowo pasek znaczy to samo co kolumna.

###### Zadanie
 1. Z pliku known-people.tsv wytnij kolumnę #imię (ale sam nagłówek pomiń), a następnie przesortuj imiona w kolejności rosnącej (od a do z). Wynik zapisz w pliku names.tsv, plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.

### paste
Paste to polecenie pozwalające sklejać ze sobą kolumny, choć w pierwszej chwili na myśl przychodzi magiczny skót ctrl + v. Polecenie to pobiera dowolną ilość argumentów

###### Przykład
 1. `paste kolumna_2 kolumna_1` - pozwala zamienić kolejność kolumn w pliku, zakładając że wpierw pociąłeś/pocięłaś je na dwa pliki (np. tak `cut -f1 plik > kolumna_2` i ``)
 2. Powyższe  polecenie można też wykonać sprytniej: `paste <(cut -f2 plik) <(cut -f1 plik) > nowy_plik`. Wyrażenie <() to hak, który pozwala przekierować wynik operacji od razu na wejście programu, warto go zapamiętać.

###### Zadanie
 1. Kolega z klasy poprosił Cię o zmianę kolejności kolumn w pliku class-members.tsv tak żeby odpowiadały jego zdaniem lepszej reprezentacji w której kolumny ułożone są w następujący sposób: płeć, pesel, kolor_oczu,  imię, nazwisk. Stwórz nowy plik przy pomocy polecenia paste i przekieruj go do pliku o nazwie class-members-bestformat.tsv, plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.
 2. Podobnie jak w poprzednim zadaniu zmień kolejność kolumn w pliku familly-members.tsv nazywając nowy plik familly-members-bestformat.tsv, plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.
 
### join
Join pozwala połączyć pliki o ile posiadają wspólny klucz.

###### Pomoc
 1. Przeczytaj w man join do czego służy opcja "--header"
 2. Pliki przed połączniem muszą zostać posortowane

###### Zadanie
 1. Połącz plik class-members-bestformat.tsv z plikiem familly-members-bestformat.tsv używając kolumny płeć jako klucza. Przekieruj tak powstały plik do nowego pliku o nazwie women.tsv, plik dodaj do repozytorium a polecenie którego użyłeś/użyłaś zanotuj w README.md.

### tar
Tar jest menadżerem archiwów. Używaj go do rozpakowywania oraz pakowania archiwów. Niestety tar posiada pewną niemiłą własność - argumenty. Złośliwi twierdzą że pomimo że używają go od lat i tak nie są w stanie zapamiętać jak pakować a jak rozpakowywać archiwa i ostatecznie i tak muszą to sprawdzić (np. w man), myślę że mam na to sposób:

###### Przykłady
 1. `tar zxvf archiwum.tar.gz` - rozpakuje archiwum.tar.gz. Po prostu zapamiętaj ze x brzmi jak extract a później przejedź się po klawiaturze od lewej do prawej od dołu do góry: z + x (to od lewej do prawej) a następnie v + f (od dołu do góry, a jednocześnie tylko jeden klawisz od x).
 2. `tar zcvf archiwum.tar.gz plik1 katalog1` - tworzy archiwum o nazwie archiwum.tar.gz które będzie zawierało plik1 oraz katalog1 (a także każdy wolny inny katalog lub plik który wpiszesz po spacji). Aby zapamiętać pomyśl ze c podobne jest do create a następnie zastosuj trik z przejściem się po klawiaturze od lewej do prawej od dołu do góry: z + (hop) + c (to od lewej do prawej) a następnie v + f (od dołu do góry, a jednocześnie tylko jeden klawisz od x). Można powiedzieć że jedyna róznica między rozpakuj a spakuj to druga litera: x do rozpakowania, c do pakowania.
