# Zadanie-2
---
_version_: 0.0.2
_keywords_: Linux Filesystem Hierarchy, wget, wc, sed, shuf, bash

### Zadanie wstępne
 1. Stwórz nowe repozytorium o nazwie zadanie-2.
 2. Stwórz plik README.md w którym będziesz notował/notowała informacje na temat poleceń których nauczysz się w tym ćwiczeniu (zadanie-2). Plik powinien używać formatowania Markdown do lepszego prezentowania treści. Dodatkowo notuj w nim polecenia nawet jeżeli nie ma o tym mowy w zadaniach. Chodzi o to żebyś mógł/mogła wrócić do tego pliku gdybyś zapomniał/zapomniała jak coś zrobić.

### Omówienie Exercise-1
Z poprzednim zadaniem poradziłaś sobie bardzo dobrze. Wiele pojęć było nowych, natomiast czytasz drugą część tego kursu, a zatem przynajmniej chwilowo nie masz jeszcze dość. Zanim przejdziemy dalej postaram się powiedzieć co można było zrobić lepiej. Poniższe uwagi mają charakter ogólny, a zatem mogą nie dotyczyć Twoich rozwiązań.

#### Markdown
 - Dziel tekst na fragmenty stosując #, ##, ### itd. aby wyróżnić nagłówek, rozdziały, punkty, części itd.
 - Polecenia wpisuj w ``, dzięki temu polecenia (i kod) będzie ładnie wyróżniał się od tekstu 
 - Pisz małe procedurki które opisują nie tylko polecenia, ale po co je wykonujesz i czego oczekujesz. Przykładowo:
 - "Uruchomiłem polecenie `grep "Marcin" > x.tsv` co stworzyło plik x.tsv, który następnie (...)."
 - Używaj edytora który pokazuje jak Twój plik wygląda kiedy jest sformatowany, np. https://dillinger.io/ 

#### git
 - Zapisuj częściej postęp. Za każdym razem kiedy skończysz jakąś całość (np. zadanie) warto dodać zmiany i zrobić komit.
 - Treść wiadomości komitu skierowana jest do innego człowieka. To ważny element, pomimo że często myśli się że to mało istotny wpis. Postaraj się opisać co zmieniło się od poprzedniego komitu, będąc zwięzłym ale informującym. Przykładowo wiadomości “plik added”, są zwięzłe ale nie realizują celu informowania innego człowieka (to czy plik został dodany mogę sprawdzić poleceniem `git log -p`).

#### join
Zadanie do polecenia join okazało się niedostatecznie dobrze zdefiniowane, dlatego powtórzymy je jeszcze raz. Aby lepiej zrozumieć do czego służy join, zaprojektujemy małą bazę ocen uczniów.

###### Zadanie
 1. Stwórz plik o nazwie baza-osob.tsv, w formcie TSV zawierający dwie kolumny: #id_uczenia oraz #imie_nazwisko. Pierwsza kolumna, to id ucznia, tworzone jest na podstawie roku, miesiąca oraz dnia urodzenia danego ucznia. Tworzymy system dla jednej klasy, w której wszystkie osoby wpisane do tego pliku urodziły się w 2010, a zatem pierwsze dwie cyfry ich id to 10 (np. 100630). Wpisz do pliku kilka osób (minimum 3).
 2. Stwórz 3 pliki o nazwie spełniającej wzór ‘${nazwa-przedmiotu}.tsv’, np. polski.tsv, zawierający 2 kolumny: #id_ucznia oraz #ocena. Pierwsza kolumna powinna zawierać id ucznia, druga powinna zawierać oceny ucznia z danego przedmiotu, oddzielone spacjami (przykładowo “1 4 5 5 5”). Do pliku wpisz wszystkie osoby które pojawiły się w bazie osób (plik baza-osob.tsv).
 3. Połącz pliki w taki sposób aby uzyskać plik ze wszystkimi ocenami danej osoby w taki sposób abyśmy mogli zobaczyć imię oraz nazwisko danej osoby.

Podpowiedź: będziesz potrzebował/potrzebowała połączyć połączone pliki

## Odrobina teorii
---
Narzędzia które omówiliśmy do tej pory (jak i te których nie omówiliśmy) znajdziesz w katalogu /bin, wystarczy wylistować zawartość tego katalogu poleceniem `ls /bin` aby się o tym przekonać (tak, zrób to). Chciałbym żebyś stopniowo zapoznawał/zapoznawała się z tym gdzie w Linuxie przechowywane są programy, pliki użytkownika oraz inne pliki. W Linuxie nie istnieje idealny odpowiednik konceptu dysku z systemu Windows (rozumianego jako partycja - dysk C:\), zamiast tego mamy główny węzeł wyrażany poprzez znak slash “/” do którego dowiązane są gałęzie reprezentujące zbliżone koncepty, tj.:
/home przechowuje dane użytkowników. W /home/$user/ przechowywane są Twoje pliki, tu w tym miejscu domyślnie się znajdujesz kiedy otworzysz terminal. To w tym miejscu znajduje się Twój pulpit.
/bin, /usr/bin zawierają programy systemowe oraz użytkownika

Korzystając z okazji że omawiamy strukturę plików systemowych, warto poruszyć temat zarządzania Twoimi plikami. Spójrz na poniższą strukturę plików i katalogów:

```
/home/$user
├── Desktop
│   └── faktury-grudzien-2017.xlsx
├── downloads
│   ├── the_art_of_unix_programming.mobi
│   └── extra-long-factorials.pdf
├── lab
│   ├── bash
│   │   ├── count-expenses.sh
│   │   └── generate-histogram.sh
│   └── python
│       └── add-factorials.py
├── projects
│   ├── zadanie-1
│   └── zadanie-2
└── tmp
    └── temporary-file.txt
```

Przeznaczenie poszczególnych katalogów jest następujące:
 - Desktop - odpowiednik Windowsowego pulpitu. Osobiście nie korzystam z Pulpitu do przechowywania plików, bo częściowo wymusza to klikanie plików myszką w exploratorze, zamiast manipulowania nimi z poziomu terminala.
 - downloads - do tego katalogu ściągam większość rzeczy z internetu (przeglądarka również domyślnie ściąga w to miejsce pliki). Katalog ten służy za bufor. Zanim pliki trafią w odpowiednie miejsce (np. do katalogu projektu), wpierw lądują tu aby ocenić czy faktycznie będą przydatne.
 - lab - dobre miejsce do przechowywania przepisów, tzn. krótkich przykładów skryptów, one-linerów itp, tj. rzeczy które używasz często, ale nigdy nie pamiętasz jak dokładnie się je robiło
 - projects - katalog w którym przechowuję projekty nad którymi pracuję lub pracowałem. Dla Ciebie będzie to miejsce do przechowywania repozytoriów z kolejnych zadań domowych.
tmp - katalog do eksperymentowania, tzn przechowywania plików których czas życia lub przydatność określasz jako “nie wiem”

Oczywiście przedstawiona powyżej struktura jest jedynie propozycją i nikt lepiej niż Ty nie będzie wiedział w jaki sposób dobrze rozmieścić swoje pliki.

###### Zadanie
 1. Zajrzyj na stronę http://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/ i poczytaj do czego służą poszczególne katalogi w strukturze /.

## Narzędzi ciąg dalszy
---
Dziś omówiemy cztery kolejne narzędzia. Lista jest oczywiście znacznie dłuższa, dlatego w przyszłości, gdybyś poczuł/poczuła że brakuje Ci jakiegoś narzędzia poszukaj go w internecie. Jest spora szansa że Linux posiada już takie narzędzie.

###### Porada
 1. Większość shelli (w tym również domyślny bash), posiada opcję podpowiedzi. Zamiast pisać pełne nazwy poleceń lub plików możesz wpisać kawałek ich nazwy i użyć klawisza [tab] żeby shell za Ciebie wpisał resztę. Przykładowo, jeżeli w katalogu znajduje się plik ‘plik-o-baaaaaaaaaardzo-dlugiej-nazwie.txt’ aby wyświetlić jego zawartość wystarczy wpisać `cat plik[tab]` a nawet `cat p[tab]`. Jeżeli więcej niż jedna nazwa pasują shell wyświetli wszystkie dostępne opcje. 

### wget
Wget pozwala pobierać pliki z internetu bez konieczności otwierania przeglądarki. Początkowo może się to wydawać dziwny pomysł, jednak wyobraź sobie sytuację w której piszesz skrypt który wymaga pobrania jakiegoś pliku z internetu, wówczas zmuszenie skryptu żeby otworzył przeglądarkę wydaje się dość dziwnym pomysłem (owszem jest to możliwe, ale przeglądarki zostały stworzone dla ludzi a nie skryptów, skrypt będzie miał pod górkę).

###### Zadania
 1. Ściągnij słownik języka polskiego (SJP) korzystając z polecenia wget oraz podanego adresu: https://sjp.pl/slownik/growy/sjp-20171129.zip (lub znajdz w internecie nowszy, jeżeli podany nie działa). Następnie rozpakuj słownik poleceniem unzip. Dodaj rozpakowany plik słownika do repozytorium i zrób komit.
 2. Przy użyciu wgeta ściągnij Sklepy cynamonowe które odnajdziesz w podanym linku: http://www.gutenberg.org/files/8119/8119-0.txt (książka dostępna jest w domenie publicznej). Zanim użyjesz polecenia wget spójrz jak nazywa się plik (8119-0.txt) - nie jest to szczególnie ładna nazwa, dlatego skorzystaj z opcji -O (zobacz man) i nazwij plik b.schultz-sklepy_cynamonowe.txt. Dodaj plik do repozytorium oraz zrób komit.

### wc
Narzędzie pozwalające policzyć ilość linii (a także słów i bajtów) w wejściowym pliku.

###### Zadania
 1. Policz ile linii ma słownik języka polskiego. Polecenie którego użyłeś/użyłaś zapisz w pliku README.md.
 2. Policz ile słów ma słownik języka polskiego. Polecenie którego użyłeś/użyłaś zapisz w pliku README.md.
 3. Policz ile linii mają Sklepy cynamonowe. Polecenie którego użyłeś/użyłaś zapisz w pliku README.md.
 4. Policz ile słów mają Sklepy cynamonowe. Polecenie którego użyłeś/użyłaś zapisz w pliku README.md.
 5. Policz ile razy w Sklepach cynamonowych występuje słowo księga (odmieniona przez wszystkie przypadki). Polecenie którego użyłeś/użyłaś zapisz w pliku README.md.

### sed
Narzędzie pozwalające przetwarzać wejściowy strumień przy pomocy regexów. Dwie najważniejsze rzeczy których musisz się nauczyć na temat polecenia sed to:
 - Opcja -i (`sed -i (...)`) zamienia plik w miejscu. Znaczy to że zamiana której dokonasz zostanie od razu zapisana w pliku. Domyślnym trybem w którym pracuje sed jest podmiana w strumieniach, a zatem żeby zmiana została zapisana musisz przekierować ją do pliku. Opcja -i pozwala zrobić to bez przekierowania.
 - Ilość komendy które możesz wykonać na strumieniu przy pomocy seda jest duża. Zachęcam do przeczytania sekcji command w manie seda, natomiast w szczególności zwróć uwagę na opcję podmiany łańcucha znaków pasującego do określonego wzorca (regex):
 - "s/wzorzec/nowa-wartosc/g", gdzie wzorzec jest wyrażeniem regularnym (przypomnij sobie prosze że regexy omawialiśmy już w poprzednim zadaniu, w części dotyczącej grepa)

###### Pomoce:
 1. One-liner to prosty, jednolinijkowy program. Przeczytaj krótki artykuł nt. one-linerów https://en.wikipedia.org/wiki/One-liner_program
 2. http://www.commandlinefu.com/commands/browse - portal na którym znajdziesz dziesiątki bash gemów (one-linerów). 

###### Zadania
 1. Używając polecenia echo oraz potoków stwórz prosty one-liner który cenzuruje pewne wypowiedzi. Jako tekst wejściowy do one-linera użyj następującej wypowiedzi: "proszę pana, niech pan wyłączy już ten telewizor, proszę pana". Niech na wyjściu z one-linera wypowiedź ta zawiera wyłącznie istotne informacje, tj. "wyłączy telewizor". Stwórz odpowiednią sekcję w pliku README.md w której wpiszesz swój one-liner.
 2. Otwórz plik b.schultz-sklepy_cynamonowe.txt (np. w gedit) i ‘przewiń’ kilka kartek. Czy zauważyłeś/zauważyłaś coś niepokojącego? Ja widzę niepokojące znaczki: "Wertowalimy, odurzeni wiatłem (...)". Ewidentnie zabrakło polskich znaków. Nie jest to magia księgi, to błędne kodowanie pliku. Plik mógł zostać stworzony np. pod Windowsem, mógł zostać zakodowany w innym formacie niż utf-8 (pomimo że na pierwszej stronie ewidentnie widać że plik został zakodowany w utf-8). Twoim zadaniem jest podmiana wszystkich niepoprawnych słów na słowa poprawne, wykorzystując do tego polecenie sed. Poprawiony plik dodaj do repozytorium oraz zrób komit.

### shuf
Polecenie które pozwala stworzyć losowe permutacje strumienia bądź pliku.

###### Zadania
Używając polecenia shuf wylosuj 5 razy po jednym słowie ze słownika języka polskiego (plik slowa.txt). Zanotuj w pliku README.md jakie słowa wylosowałeś/wylosowałaś.

## Bash
---
Dotychczasową wiedzę o narzędziach wykorzystamy teraz do zbudowania skryptu. Na początek jednak potrzebujemy omówić kilka podstawowych pojęć.

### Nazwa skryptu
Nazwa skryptu jest bardzo ważna. Warto jej poświęcić chwilę uwagi oraz nie wahać się jej zmieniać kiedy lepiej rozumiesz co ma robić Twoj skrypt. W nazwie skryptu chodzi o to żeby była chwytliwa, prosta i dobrze oddająca co skrypt faktycznie robi. Oto kilka porad jak nazywać skrypty:
 - Po pierwsze, skrypt powinien mieć rozszerzenie .sh (nazwa.sh).
 - Po drugie, nazwa skryptu powinna zawierać czasownik oraz idealnie rzeczownik.
 - Po trzecie, nazwa skryptu powinna być nie dłuższa niż 3 słowa (w skrajnych przypadkach 4) słowa. Im mniej tym lepiej, dwa słowa to optymalna długość.
 - Po czwarte, nazwa skryptu powinna mówić co skrypt robi, najlepiej używając do tego pojęć powszechnie znanych (w danym środowisku).
 - Po piąte, nazywając skrypt nie staraj się być zabawny, wulgarny, przemądrzały. Zabawne nazwy wydają się zabawne tylko przez chwilę, później wszyscy musimy z Twoim żartem żyć (żart powtarzany w nieskończoność...). Przemądrzałe nazwy podobnie jak zabawne nazwy nie służą nikomu. Dobrze, rozumiemy że wiesz jak działa tezaurus, cieszymy się jak zasobny masz słownik. Jeżeli muszę sprawdzić co znaczy dane słowo przed uruchomieniem skryptu to oznacza że skrypt nazywa się źle. Pomyśl o tym że nazwa skryptu nie jest dla Ciebie, ma ona służyć komuś kogo nie znasz.
 - Po szóste, skrypt powinien zawierać wyłącznie małe litery, czasem cyfry, i myślnik bądź podkreślnik zamiast spacji (ponieważ użycie spacji wymaga aby poprzedzić ją znakiem ucieczki podczas np. próby uruchomienia takiego skryptu. Porównaj: `./skrypt\ ze\ spacjami.sh` z `./skrypt-bez-spacji.sh`).

Przykłady złych nazwy skryptów: test.sh, skrypt.sh, blabla.sh, o-bo.sh
Przykłady ładnych nazw skryptów: create-histogram.sh, shutdown-computer.sh

### Uruchamianie skryptu
Aby uruchomić skrypt napisany w bashu potrzebujemy dodać w pierwszej linii pliku formułę “#!/bin/bash”. Co ona oznacza? W ten sposób mówimy że ten skrypt powinien zostać wykonany przez basha (podobnie będzie ze skryptami np. w pythonie).
Wiem że nie jest łatwo zapamiętać tego ciągu znaków, po prostu nie jest on intuicyjny. Mam dla Ciebie mnemotechnikę pozwalającą to zapamiętać. Wpierw zapytaj gdzie znajduje się bash (polecenie `which` odpowiada na pytania gdzie w systemie jest program x) a wynik przekieruj do pliku, tzn: `which bash > skrypt.sh`. W tym momencie wystarczy dodać shebang (https://en.wikipedia.org/wiki/Shebang_(Unix)) i voilà! Skrypt (prawie) gotowy.

Drugą rzeczą jest zmiana atrybutu skryptu, tak żeby był on wykonywalny. Użyj polecenia:

    $ chmod +x skrypt.sh

aby skrypt stał się wykonywalny (aby łatwiej zapamiętać change mode = chmod, add executable attribute = +x).

Teraz możesz uruchomić skrypt wpisująć: `./skrypt.sh` (pamiętaj o podpowiadaniu nazw przez [tab]).

### Zmienne
Zmienne to sposób na przechowywanie rzeczy po to aby użyć ich kolejny raz. Jest to też sposób na to aby ułatwić czytanie/zrozumienie skryptu przez wydzielenie pewnych rzeczy w logiczne całości.
W bashu, aby stworzyć zmienną możesz posłużyć się jedną z następujących notacji:
 - `ZMIENNA="tekst"` - zapamiętuje tekst w zmiennej
 - `ZMIENNA=12` - zapamiętuje liczbę w zmiennej
 - `ZMIENNA=`polecenie`` - wykonuje polecenie a jego wynik zapamiętuje w zmiennej
 - `ZMIENNA=$INNA_ZMIENNA` - kopiuje wartość INNA_ZMIENNA do ZMIENNA

Nazwy zmiennych są równie ważne co nazwa skryptu, dlatego postaraj się przestrzegać kilku porad:
 - Nazwy zmiennych powinny zawierać wyłącznie wielkie litery oraz znak podkreślnika “_” zamiast spacji.
 - Nazwy zmiennych powinny być zapisane w języku angielskim i powinny odpowiadać rzeczom. Nazwa powinna być możliwie jasna i przejrzysta, tak żeby bez zaglądania do jej zawartości można było się zorientować co w niej będzie przechowywane
Nazwa zmiennej nie powinna być dłuższa niż 3 słowa

Poniżej przedstawiam prosty skrypt, który może posłużyć jako realizacja powyższych porad

```bash
#!/bin/bash
 
BAD_WORD="motyla noga"
INPUT_TEXT="(...) Ale nasypało, motyla noga! Już od kwadransa nie ma autobusu! Kurcze pióro!"
 
CENSORED_INPUT=`echo "$INPUT_TEXT" | sed "s/$BAD_WORD/m***** n***/g"`
 
echo "Hello World! Oto cenzor, skrypt który cenzuruje brzydkie wypowiedzi. Zamiast okropnego tekstu ‘$INPUT_TEXT’ zwróci ‘$CENSORED_INPUT’ - znacznie lepiej."
```

### Wejście i wyjście
Właściwie wszystkie narzędzia których używałaś/używałeś do tej pory pobierały argumenty. Przykładowo polecenie `head` wyświetla -n pierwszych linii z pliku, a zarówno -n liczba jak i nazwa pliku są argumentami tego narzędzia. Warto też zauważyć że narzędzie to ma pewne domyślne zachowanie, nawet jeżeli nie podamy argumentu -n1, jest to bardzo eleganckie - też tak będziemy chcieli robić.

Załóżmy że ktoś wykona nasz skrypt censor-text.sh w następujący sposób:

    $ ./censor-text.sh pierwszy drugi trzeci

Co się wydarzy? Nic. Dlaczego? Ponieważ skrypt censor-text.sh nie pobiera argumentów. W jakis sposób możemy to zmienić? Przez prostą własność basha w którym $1, jest zmienną która przyjmuje wartość z pierwszego argumentu podanego do skryptu. Przykładowo:

```bash
#!/bin/bash
 
BAD_WORD=$1
INPUT_TEXT=$2
 
CENSORED_INPUT=`echo "$INPUT_TEXT" | sed "s/$BAD_WORD/m***** n***/g"`
 
echo "Hello World! Oto cenzor, skrypt który cenzuruje brzydkie wypowiedzi. Zamiast okropnego tekstu ‘$INPUT_TEXT’ zwróci ‘$CENSORED_INPUT’ - znacznie lepiej."
```

I teraz kiedy wykonamy skrypt censor-text.sh z parametrami, mamy okazję zmienić jego zachowanie:

    $ ./censor-text.sh "Kurcze pióro" "(...) Ale nasypało, motyla noga! Już od kwadransa nie ma autobusu! Kurcze pióro!"

Zwróć uwagę że argumenty zostały owinięte znakami “. Jest to sposób na to żeby odróżnić od siebie kolejne argumenty.

Na koniec wypadałoby powiedzieć kilka słów o wyjściu. Chwilowo nie będziemy tłumaczyli jak należy drukować informacje dla użytkownika lepiej niż wypisując proste zasady:
 - Skrypt nie powinien być niemy. Jeżeli skrypt coś wykonuje powinien o tym powiedzieć, szczególnie jeżeli operacje trwają dłużej niż kilka sekund.
 - Postaraj się wydrukować tylko niezbędne informacje. Nie ma potrzeby pisać pełnych zdań, a nawet lepiej tego nie robić.
 - Oddzielaj od siebie bloki informacji (np. znakami nowych linii) 
 - Używaj kolorów (o ile potrafisz), jednak pamiętaj że nie wszystkie shelle sobie z nimi poradzą
 - Postaraj się żeby wyjście Twojego skryptu lub programu mogło zostać przetworzone przez inne programy (np. cut, head, itp)
Później zweryfikujemy te proste zasady i postaramy się je lepiej omówić.

## Pierwsze skrypty
---
Wykorzystując wiedzę z poprzednich rozdziałów stwórz następujące skrypty.

###### Zadania
 1. Przepisz zadania z polecenia sed w postaci dwóch skryptów. Jeżeli będzie to możliwe niech skrypt pobiera argumenty od użytkownika. Przemyśl ich nazwy a następnie dodaj oba skrypty do repozytorium.
 2. Stwórz skrypt który pobiera od użytkownika nazwę pliku a następnie drukuje następujące informacje:
    - Ilość linii
    - Ilość słów
    - 10 najpopularniejszych słów
    - 10 najmniej popularnych słów
    - 10 słów nie występujących w słowniku języka polskiego
