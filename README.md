# adatbazis_beadando

**Csoporttagok**
Vigh Rebeka

**Adatbázis leírása**

Ez a relációs adatbázis-modell egy fiktív autósiskola számára készült. A modell alapértelmezetten harmadik normálformában készült (tehát nincsenek benne redundanciák és tranzitív függőségek) és 5 táblát tartalmaz, ezek:

- Tanulók
- Oktatók
- Tanfolyamok
- Beiratkozások
- Vizsgák

Az elsődleges kulcsok a táblákhoz kapcsolódóan:
- tanulo_id (Tanulók)
- oktato_id (Oktatók)
- tanfolyam_id (Tanfolyamok)
- beiratkozas_id (Beiratkozások)
- vizsga_id (Vizsgák)

A Beiratkozások tábla idegen kulcsokkal (az egyes "_id"-k) kapcsolódik a Tanulók, Oktatók és Tanfolyamok táblákhoz. A Vizsgák tábla pedig szintén idegen kulccsal (tanulo_id) kapcsolódik a Tanulók táblához. 

Az adatbázis célja, hogy az autósiskola számára könnyen tárolhatóak és később hatékonyan lekérdezhetőek legyenek olyan hasznos információk, mint pl. 

1. Kik, mikor és milyen típusú (elméleti/gyakorlati) sikeres vizsgát tettek (statisztika)
2. Ki a legnépszerűbb oktatójuk a hozzájuk történt beiratkozások száma alapján (statisztika, illetve marketing céljából)
3. Van-e és melyik az olyan tanfolyamuk, amire nem történt beiratkozás (akár egy adott időszakban - hogy esetleg azt a tanfolyamot szüneteltessék/kivegyék a kínálatból)
4. Melyik volt a legforgalmasabb hónapjuk a beiratkozások számát tekintve (későbbi tervezésben segíthet)
5. Kik azok a tanulók, akik elméleti és gyakorlati tanfolyamra is beiratkoztak már (nyomonkövetés)
6. Kik azok akik még nem vizsgáztak, vagy még nem volt sikeres vizsgájuk (így azokkal fel lehet venni a kapcsolatot emailen/telefonon)
