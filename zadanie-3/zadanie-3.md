# Zadanie-3
---
_version_: 0.0.1
_keywords_: github, komentarze, instrukcje sterujące, funkcje, planowanie, NER

## Elementy stylu

Dzisiejsze zadanie zaczniemy od wspomnienia o aspekcie estetycznym i stylistycznym programów napisanych w Bashu
(a właściwie w dowolnym języku programowania).

### Komentarze

Komentarze to bardzo ważny element Twojego kodu. Podobnie jak plik README komentarze tworzysz aby wytłumaczyć osobie
która będzie czytała kod (często sobie z przyszłości) do czego służy dany fragment oraz jaki cel zamierzałeś/zamierzałaś
osiągnąć pisząc dany kod. Podobnie jak w przypadku treści wiadomości komitów komentarze powinny nie być oczywiste, nie
powinny mówić tego co jest trywialne, oczywiste. Raczej powinno Ci zależeć na tym żeby tłumaczyły nieoczywiste rzeczy
w sposób prosty.

Zacznijmy od technikalii. Komentarze w skryptach Bashowych tworzymy w następujący sposób:
 1. Komentarze jednolinijkowe wystarzczy poprzedzić znakiem #, przykładowo:
    ```bash
    #!/bin/bash
    # A simple shell script comment that explain nothing
    ```
    Nie znaczy to że znak # musi być pierwszym znakiem w linii, ani że po znaku # musi nastąpić spacja.
 2. Wielolinijkowe komentarze możemy zapisać używając następującej konstrukcji:
    ```bash
    #!/bin/bash
    echo "Adding new users to LDAP Server..."
    <<COMMENT1
        Master LDAP server : dir1.nixcraft.net.in
        Add user to master and it will get sync to backup server too
        Profile and active directory hooks are below
    COMMENT1
    echo "Searching for user..."
    ```

Najważniejsza w komentarzu jest oczywiście treść, dlatego:
 1. Pisz komentarze w trakcie pisania kodu. Kiedy skończysz pisać kod nie bedziesz miał/miała ochoty ich pisać.
 2. Kiedy skończysz pisać skrypt przeczytaj komentarze jeszcze raz. Możliwe że wymagają poprawy, albo co lepsze, możliwe
    że lepiej rozumiesz problem co sprawi że lepiej jesteś w stanie wyjaśnić w komentarzu co chciałeś/chciałaś osiągnąć.
 3. Staraj się nie tłumaczyć pojedyńczych linijek, chyba że są bardzo nieoczywiste, komentuj całe bloki w komentarzu
    pisząc co zamierzałeś/zamierzałaś zrobić.
 4. Nie komentuj za dużo, nie komentuj za mało.
 5. Używaj zwięzłego języka, staraj się być precyzyjny/precyzyjna. Nikt nie będzie czytał wypracowań, nikt nie zrozumie
    kilku enigmatycznych skrótów.
 6. Właściwie nie ma znaczenia w którym miejscu pojawia się komentarz, najważniejsze żeby być konsekwentnym. Natomiast
    moim zdaniem lepiej czyta się komentarze które poprzedzają blok do którego się odnoszą i w linii tej nie ma nic
    innego oprócz komentarza.


###### Pomoce
 1. https://en.wikipedia.org/wiki/Comment_(computer_programming)

### Styl

Bez zbędnego wstępu na temat tego czym jest styl, jak jest ważny. Oto kilka porad które sprawi że Twój kod będzie
ładniejszy i bardziej czytelny:
 1. Sprawdź czy plik nie zawiera niepotrzebnych białych znaków. Najczęstszym tego typu problemem jest pozostawianie
    spacji na końcach linii (/\s\+$/) bądź pozostawianie osieroconych białych znaków w linii (/^\s\+$).
 2. Sprawdź czy linie w pliku nie są dłuższe niż 120 znaków. Znaczna część edytorów (np. gedit) pozwala ustawić
 3. Instrukcje które są ze sobą związane logicznie warto wydzielić graficznie od kolejnych instrukcji składających się
    na większą całość tak aby dać osobie czytającej kod sygnał że pewne fragmenty są ze sobą związane. Przykładowo:
    ```
    #preprocessing
    text = remove_stop_words(text)
    text = remove_punctuation(text)

    #main
    sentiment = retreive_sentiment(text)

    #postprocessing
    print_output(sentimetn)
    save_output_to_file(sentiment)
    ```
 4. Wydzielaj funkcje. Postaraj się żeby cała funkcja mieściła się na jednym ekranie.

###### Pomoce
 1. https://en.wikipedia.org/wiki/The_Elements_of_Style (do znalezienia w internecie)
 2. https://en.wikipedia.org/wiki/The_Elements_of_Programming_Style
 3. https://www.python.org/dev/peps/pep-0008/ - poradnik dla Pythona, ale sporo uwag jest metajęzykowych

## Instrukcje sterujące

W tym zadaniu wymienimy tylko dwie instrukcje sterujące. Warto abyś zapoznał/zapoznała się z pozostałymi, np. czytając
4 rodział z [bash.cyberciti.biz](https://bash.cyberciti.biz/guide/Chapter_4:_Conditionals_Execution_(Decision_Making))

### if

"Instrukcja warunkowa jest elementem języka programowania, które pozwala na wykonanie różnych obliczeń w zależności od
tego czy zdefiniowane przez programistę wyrażenie logiczne jest prawdziwe, czy fałszywe." - Wikipedia

W Bashu ifa tworzy się w ten sposób:

```bash
if [ condition ]
then
   # if given condition true
   # execute all commands up to else statement
   # or to fi if there is no else statement
else
   # if given condition false
   # execute all commands up to fi
fi
```

### Pętla for

W Bashu fora tworzy się w następujący sposób:

```bash
for var in item1 item2 ... itemN
do
    polecenie1
    polecenie2
    ...
    polecenieM
done
```

Polecenia od 1 do M wykonają się N razy, ponieważ tyle elementów znajduje się na liście (in item1 item2 ... itemN).
Odrobinę bardziej praktyczny przykład mógłby wyglądać tak:

```bash
FRUITS="apple orange tomato"
for element in $FRUITS
do
    echo "$element"
done
```

Powyższy kod wyświetli wszystkie owoce zdefiniowane na liscie FRUITS.
Warto również napisać że do pętli for można przekazać wprost wynik polecenia, np.:

```bash
for var in `polecenie`
do
    echo "$var"
done
```

## Licznik

Licznik to bardzo prosty ale bardzo użyteczny koncept. Tworząc zmienną w której przechowujemy liczbę którą następnie
zwiększamy (lub zmniejszamy) jesteśmy w stanie . Oto prosty przykład licznika:

```bash
COUNTER=0
echo $COUNTER
COUNTER=$((COUNTER+1))
echo $COUNTER
```

Bądź troszeczkę bardziej skomplikowany licznik w pętli for:

```bash
#!/bin/bash

for (( i = 1; i <= 5; i++ ))
do
    echo -n "$i "
done
```

Powyższa konstrukcja wyświetli liczby od 1 do 5. Można ją również zapisać w taki sposób:

```bash
#!/bin/bash

for i in {1..5}
do
    echo -n "$i "
done
```

### Podsumowanie

Złóżmy trzy nowe koncepty w całość, jednocześnie przywołując jedno z zadań z exercise-2. Wyświetlenie 10 słów które nie
występują w słowniku języka polskiego można napisać np. tak:

```bash
if [ -e "$DICTIONARY" ]
then
echo "10 words not present in dictionary:"
WORDLIST=`echo "${FREQUENCY_SORTED_WORDS}" | sed -r 's/ *[0-9]+ (.+)/\1/'`
for word in $WORDLIST
do
  if ! grep -q -e "\b${word}\b" $DICTIONARY
  then
    echo "${word}"
    ((N++))
    if [ $N -ge 10 ]
    then
      break
    fi
  fi
done
```

(powyższy skrypt należy do rozwiązania które stworzyła Dorota)

## Funkcje

Programy mają być przede wszystkim czytelne dla ludzi. Jeżeli chodzi o komputery to wystarczyłoby zapisać im program
przy użyciu samych zer i jedynek. Wprowadzamy koncept funkcji aby:
 1. Wydzielić logiczne całości, które realizują jedną rzecz, więc chcemy zapisać je w jednym bloku którym jest funkcja
 2. Używać funkcji w różnych programach albo używać ich kilkukrotnie w jednym programie

Funkcje w Bashu tworzymy w następujący sposób:

```bash
#!/bin/bash

function hello {
    echo "Hello!"
}

hello
```

### Funkcje z parametrami

Funkcje z parametrami to złożenie znanych nam konceptów (argumenty w Bashu i wprowadzone chwile temu funkcje):

```bash
#!/bin/bash

function substract {
    A=$1
    B=$2
    echo $((A-B))
}

substract 5 2
```

## Planowanie
Jednym z problemów poprzednich odcinków było oddawanie zadań na czas. Tak się składa że nie tylko w naszym kursie mamy
z tym problem. Według Standish Group zaledwie 1/3 projektów informatycznych zostanie ukończona na czas. Pokazuje
to problem z którym postaramy się zmierzyć. Przeczytaj poniższe porady które zastosujemy do zaplanowania zadania które
pojawi się w dalszej części kursu.

Planowanie projektu wersja 'easy':
 1. Podziel problem na kilka logincznych bloków które będziemy nazywać historiami (stories).
 2. Podziel każdy blok logiczny (story) na zadania (tasks). Niech każde z zadań trwa mninimum 30 minut.
 3. Postaraj się przypisać każdemu z zadań planowany czas potrzebny na jego wykonanie. Aby określić czas potrzebny
    na wykonanie zadania posłuż się po pierwsze właśnym doświadczeniem oraz przeczuciem (owszem, na początku nie
    posiadacie ani doświadczenia ani intuicji, ale trzeba od czegoś zacząć...). Dodatkowo aby łatwiej określić ile czasu
    zadanie może zająć postaraj się odpowiedzieć na trzy pytania:
    - ile czasu zadanie zajmie jeżeli wszystkie obawy dotyczące tego co może pojść źle się spełnią (wariant
       pesymistyczny)
    - ile czasu zadanie zajmie jeżeli wszystkie rzeczy pójdą nadspodziewanie prędko, przykładowo już wiesz jak
       to zrobić i po prostu od razu wszystko się udało (wariant optymistyczny)
    - biorąc pod uwagę wariant pesymistyczny oraz wariant optymistyczny postaraj się określić wartość środkową, która
       ma symbolizować sytuację w której nie wszystko idzie idealnie, ale również nie wszystko idzie źle
 4. O niektórych zadaniach bardzo ciężko cokolwiek powiedzieć, nawet nie wiemy czego nie wiemy (unknown unknowns),
    podczas gdy o innych rzeczach wiemy właściwie wszystko, tzn. wiemy jak daną rzecz wykonać, robiliśmy ją wiele razy,
    wiemy co może pójść nie tak (known knowns) na koniec pozostają rzeczy o których trochę wiemy, trochę nie (known
    unknowns). Korzystając z tych trzech poziomów niepewności przypisz każdemu z zadań odpowiednią łatkę.

Przykład:
Chcę ugotować ramen na obiad. Podzielę zadanie na cztery etapy (stories) z których każdy zawiera zadania (tasks) i
oczekiwany czas na ukończenie poszczególnych zadań:
 1. [6h5min] Przygotowanie bulionu
    - [5min] przygotowanie mięsa
    - [6h] dodać mięso i warzywa, gotować
 2. [5h15min] Przygotowanie dodatków
    - [10min] przygotować grzyby shitake
    - [5min] ugowować jajka
    - [5h] przygotować mięso (wolno gotowana wieprzowina)
 3. [15min] Przygotowanie makaronu
 4. [15min] Złożenie ramenu w całości i podanie
W trakcie gotowania, w momentach które nie wymagają mojego skupienia, mógłbym wrócić do planu i zobaczyć czy któryś
z punktów wymaga poprawienia. W ten sposób następnym razem gotując ramen będę wiedział jak to zrobić oraz ile czasu to
zajmie.

###### Zadanie
 1. Po przeczytaniu treści następnego zadania stwórz plik planning.md w którym stworzysz zadania (tasks) oraz historie
    (stories). Nie zaczynaj pracy nad zadaniem tylko zaplanuj ile czasu zajmie Ci wykonanie tego zadania zgodnie
    z powyższym opisem. Podziel całe zadanie na kilka bloków (stories) z których każdy blok zawiera od jednego do kilku
    zadań (task). Następnie niech każde zadania posiada oszacowany czas jego trwania oraz pewność w pozdaci 3 stopniowej
    skali (known known, unknow known, unknown unknow). Zapisz i zakomituj taką wstępną wersję zanim zaczniesz pracować
    nad projektem.
 2. W momencie kiedy wykonałeś/wykonałaś około 25% zadań zdefiniowanych na wstępnie czas na retrospekcję. Sprawdź czy
    wiesz więcej o historiach oraz zadaniach, może zmienił się ich status pewności? Albo być może
    zapomniałeś/zapomniałaś wcześniej o jakimś zadaniu lub wręcz cały plan trzeba przepisać od nowa? Zrób to a poprawki
    zapisz w pliku planning.md i plik zakomituj.
 3. Powtórz czynności z punktu 2) w momencie wykonania około 50% zdefiniowanych zadań. Wynik zapisz w pliku planning.md
    a następnie zrób komit.
 4. Powrórz czynności z punktu 2) w momencie wynonania około 85% zdediniowanych zadań. Wynik zapisz w pliku planning.md
    a następnie zrób komit.
 5. Na koniec zrób podsumowanie na podstawie 4 powyższych punktów. Czego się nauczyłeś/nauczyłaś?

###### Porada
 1. Przeczytaj [Software development effort estimation](https://en.wikipedia.org/wiki/Software_development_effort_estimation)
    aby zapoznać się z różnymi technikami które pomagają w szacowaniu czasu potrzebnego na stworzenie programu.
 2. Zobacz wstęp do Agile: https://www.youtube.com/watch?v=NrHpXvDXVrw
 3. https://blog.zenkit.com/a-beginners-guide-to-getting-things-done-3cc1a5123b98

## Program

Dziś stworzysz swoje pierwsze prawdziwe nadzędzie w Bashu! Jako Twoje pierwsze zadanie wybrałem stworzenie NERa, tj.
programu który wyciąga z tekstu pewne fragmenty które nazywamy jednostkami nazwanymi, przykładem takiej jednostki mogą
być np. miasta albo imiona.

###### Zadanie
 1. Stwórz narzędzie odzyskujący jednostki nazwane z dowolnego tekstu (NER).
    - Wejściem programu jest a) plik tekstowy oraz b) leksykon. Plik tekstowy będzie zawierał wyłącznie tekst,
      zakodowany zostanie w UTF-8. Leksykon to plik tekstowy, zapisany w katalogu data/, zakodowany w UTF-8, plik będzie
      zawierał jedną jednostkę w linii (przykład do odnalezienia w katalogu data/).
    - Wyjściem programu są trzy kolumny: char_start, char_stop i entity (bez nagłówka). W kolumnach char_start oraz
      char_stop powinny pojawić się liczby które oznaczają początek oraz koniec występowania jednostki nazwanej licząc
      od początku pliku. Przykładowo dla tekstu "Czy ktoś widział moją herbarę?", jeżeli jednostką nazwaną jest
      'herbarę', wówczas char_start=22 a char_stop=29, entity=herbatę.
    - Narzędzie możesz uznać za skończone w momencie kiedy skrypt test.sh zgłasza informacje że wszystkie testy zostały
      zdane.
    - W ramach zadania przygotuj leksykon zawierające imiona, miasta, nazwy grup muzycznych.
    - Skrypt odzyskujący jednostki powinien nazywać się 'get_entities.sh'
 2. Zaplanuj pracę zgodnie z opisanm w poprzednim rozdziale opisem.
 3. Stwórz plik README.md, w formacie Markdown, który będzie zawierał opis narzędzia które stworzyłeś/stworzyłaś. Opis
    powinien zawirać następujące sekcje:
    - Do czego służy narzędzie
    - Zależności (o ile istnieją)
    - Jak użyć narzędzie
    - Jak przetestować narzędzie
 4. [Zadanie dodatkowe (na szóstkę)] Rozszerz ilość testów w skrypcie test.sh oraz wprowadź metrykę która wyznaczy
    skuteczność skryptu, tzn. powie nam o tym ile zdań skrypt rozpoznaje poprawnie a ile nie. Najlepiej gdybyś
    wyznaczył/wyznaczyła [precision i recall](https://en.wikipedia.org/wiki/Precision_and_recall).
 4. Upewnij się że repozytorium nie zawiera zbędnych plików, że wszystkie pliki zostały zakomitowane, stwórz archiwum
    tar.gz i wyślij je do Marcina (mailem).
