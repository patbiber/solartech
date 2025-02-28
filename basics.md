# Elektrotechnik für Solarteure Basics ☀️ 👷

# Energie und Arbeit

Arbeit, Energie, Wärmemenge [Ws, J, Nm, kg * m2 / s2] $W, E , Q$ = Kraft [N] $F$ * Weg [m] $s$ = Leistung [W] $P$ * Zeit [s] $t$ =  $m \cdot c \cdot \Delta t$

$P = W / t$

- 1 cal = 4.154 J
- 1 Ws = 1 J 
- 1 kWh = 3'600'000 J = 3.6 MJ
- 1 PS = 735 W 

Kraft [N] $F$ = Masse [kg] $m$ * Beschleunigung  [m/s2] $a$

Spezifische Wärmekapazität des Mediums [J/(kg·K)] $c$ (z. B. Wasser: 4.18 [kJ/(kg·K)]

1 kg ÖE = 41,868 MJ = 10'000 kcal = 11,63 kWh = 1.428 SKE

1 kg SKE = 0.7 kg ÖE = 7'000 kcal = 29'3076 MJ = 8,141 kWh

## Der einfache Stromkreis ⚡

### Stromarten 🤘 AC/DC

🔋 Gleichstrom (Direct Curren) DC -

🔌 Wechselstrom (Alternating Current) AC ~

### Ohmsches Gesetz Ω

Spannung Volt [V] $U=R*I$

Stomstärke Ampère [A] $I=\frac{U}{R}$

Wiederstand Ohm [ $\Omega$ ] $R=\frac{U}{I}=(\rho*l)/A$

$\rho$ = spezifischer Wiederstand [ $\Omega$ mm²/m]

l = Leitungslänge [m]

$A$= Stromdichte [A / mm²]

Leitwert Siemens [S] $G = 1/R$

### Serieschaltung

Alle Wiederstände sind vom selben Strom druchflossen:
$I_{tot} = I_2 = I_3 = I_3$

Die Spannung wird von den Wiederständen proportional geteilt:
$U_{tot} = U_1 + U_2 + U_3$

Die Widerstände werde addiert: 
$R_{tot} = R_1 + R_2 + R_3$

### Parallelschaltung

Der Strom fliesst proportional:
$I_{tot} = I_1 + I_2 + I_3$

Die Spannung ist an allen Wiederständen gleich:
$U_{tot} = U_1=U_2=U_3$

Der  Kehrwert des Gesammtwiederstand ist die Summe der Kerhwerte der Einzelwiederstände: 
$R_{tot} = 1 / (1/R_1 + 1/R_2 + 1/R_3) = R_{Einzel}/
n$

## Drehstrom

### Sternschaltung

![Sternschaltung](https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Sternschaltung.svg/250px-Sternschaltung.svg.png)

$I = I_p$

$U = \sqrt3 * U_p$ = 400V

$U_p$ = 230 V

[Wikipedia Sternschaltung](https://de.wikipedia.org/wiki/Sternschaltung)

### Dreickschaltung

![Dreieckschaltung](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Dreieckschaltung.svg/330px-Dreieckschaltung.svg.png)

$U = U_p$

$I = \sqrt3 * I_p$

[Wikipedia Dreieckschaltung](https://de.wikipedia.org/wiki/Dreieckschaltung)

## Elektrische Arbeit und Leistung

Leistung Gleichstrom / Scheinleistung [VA] / Omsche Last [W] $P = U * I = U2 / R = I²*R$

Leistung Wechselstrom Einphasig [W] $P = U * I * cos\phi$

Leistung Drehstrom Dreiphasig [W] $P = \sqrt{3} * U * I * cos\phi $

Leistungsfaktoktor $cos\phi = P /S$

*Gleichstrom: $cos\phi$ = 1*

Leistung [W] $P = W / t$

Arbeit [Ws] *Praxis [kWh]* $W = P * t = U * I * t * cos\phi$

Kosten = $W * Tarif$

Wirkungsgrad [Faktor] $\eta = P_{Nutzen} / P_{Aufwand} = \eta_1*\eta_2*\eta_n $

Wandlungsverlust + $\eta$ = 100%

1 - Verluste = Wirkungsgrad

bsp: 0.92 * 0.93 * 0.8 = 0.684 --> 68%

Nutzenergie: Energie auf dem Rad 

Endenergie: Energie aus der Steckdose

(Bsp E-Car)

## Erlaubte Stromdichte für Leitungs Querschnitt

| Stromdurchfluss [A] | Querschnitt [mm²] |
| ------------------- | ----------------- |
| 200                 | 95                |
| 160                 | 70                |
| 100                 | 35                |
| 80                  | 25                |
| 69                  | 16 (Erdung)       |
| 50                  | 16 (Erdung)       |
| 40                  | 10                |
| 32                  | 6                 |
| 25                  | 6                 |
| 20                  | 4                 |
| 16                  | 2,5               |
| 16                  | 1.5               |

Die Erdung hat immer 16 mm² 

bsp: 16 A * 230 V = 3.68 kW

# Schmelzsicherungen

| Nennstrom          | Farbe      | Fußdurchmesser |       |         |
| ------------------ | ---------- | -------------- | ----- | ------- |
|                    |            | D              | DL    | D0      |
| 2 A                | 🟥 rosa    | 6 mm           | 8 mm  | 7,3 mm  |
| 4 A                | 🟫 braun   |                |       |         |
| 6 A                | 🟩 grün    |                |       |         |
| (10 A mit 6 A Fuß) | 🟥 rot     |                |       |         |
| 10 A               | 🟥 rot     | 8 mm           | 8 mm  | 8,5 mm  |
| (13 A)             | ⬛ schwarz  |                |       |         |
| 16 A               | ⬜ grau     | 10 mm          | 10 mm | 9,7 mm  |
| 20 A               | 🟦 blau    | 12 mm          | 12 mm | 10,9 mm |
| 25 A               | 🟨 gelb    | 14 mm          |       | 12,1 mm |
| 32 A               | 🟪 violett |                |       |         |
| 35 A (40 A)        | ⬛ schwarz  | 16 mm          |       | 13,3 mm |
| 50 A               | ⬜ weiß     | 18 mm          |       | 14,5 mm |
| 63 A               | 🟧 kupfer  | 20 mm          |       | 15,9 mm |
| 80 A               | ⚪ silber   |                |       | 21,4 mm |
| 100 A              | 🟥 rot     |                |       | 24,2 mm |

[Wikipedia Schmelzsicherungen](https://de.wikipedia.org/wiki/Schmelzsicherung)

### Beispiel

40 Ampère Sicherung * 230 V * 3 Phasen = 27600 VA -> 27,6 kWP max Leistung der Solaranlage 
$I * U * cos\phi= P$

# Solar Panel Auslegung

### Temperatur Korrektur für Leerlaufspannung Voc [V]

Effektive Leerlaufspannung $U$ [V]= Leerlaufspannung $U_{oc}$ [V] @ 25 °C * Tempereaturkoeffizient $V_{oc}$ [%/°K] * $\Delta t$

### Geometrie Dachschräge

$l_{Dach}=b / cos(\Theta)$

$b=l_{Dach} * cos(\Theta)$

b ist die Breite bis zum First vom Grundriss

$\Theta$ ist die Dachschräge

$l_{Dach}$ ist die effektive Länge des Daches von der Traufe bis zum First

[Wikipedia Trigonometrische Funktion ](https://de.wikipedia.org/wiki/Trigonometrische_Funktion)

![Trigonometrische Funktion](https://upload.wikimedia.org/wikipedia/commons/5/56/RechtwinkligesDreieck.svg)

![Trigonometrische Funktion](https://wikimedia.org/api/rest_v1/media/math/render/svg/bba659bb417359e2b6a733d5fcc549027eade0c2)

# Fläche

## Dreieck

$A = (l * h )/2$

## Kreis

$A = (d²*\pi)/ 4$

# Heizleistung und Wärmeübertragung

Heizleistung [W] $P = \frac{Q}{t}$

## Heizleistung bei Massefluss

1 [J] = 1 [Ws]
1 [MJ] = 1 * 10 ^6 J 
kWh = MJ / 3.6

Wärmeenergie $Q [J][Ws] = m \cdot c \cdot \Delta t$

- $m$: Masse des Mediums [Kilogramm (kg)]
- $c$: Spezifische Wärmekapazität des Mediums [J/(kg·K)] (z. B. Wasser: $c$ approx 4.18, [kJ/(kg·K)]
- $\Delta t$: Temperaturänderung [K]

Wärmeleistung $P [W] = \frac{Q}{t} = \frac{m \cdot c \cdot \Delta t}{t}$

- $t$: Zeit [s]

### Rohrmasse und Max. Durchfluss

| Gewinderohr (") | Nennweite (DN) | Außendurchmesser (mm) | Max. Durchfluss (l/s) |
| --------------- | -------------- | --------------------- | --------------------- |
| 3/8"            | DN 10          | 17,2                  | 0,33                  |
| 1/2"            | DN 15          | 21,3                  | 0,83                  |
| 3/4"            | DN 20          | 26,9                  | 1,33                  |
| 1"              | DN 25          | 33,7                  | 2,50                  |
| 1 1/4"          | DN 32          | 42,4                  | 3,83                  |
| 1 1/2"          | DN 40          | 48,3                  | 5,00                  |
| 2"              | DN 50          | 60,3                  | 8,33                  |
| 2 1/2"          | DN 65          | 76,1                  | 13,33                 |

## Heizleistung bei Wärmeübertragung durch eine Fläche

Wenn Wärme durch eine Fläche (z. B. durch eine Wand) übertragen wird, lautet die Formel:

Wärmeleistung [W] $P = A \cdot k \cdot \Delta t$

- $A$: Fläche der Wärmeübertragung [m²]
- $k$: Wärmedurchgangskoeffizient [W/(m²·K)] (Materialabhängig)
- $\Delta t$: Temperaturdifferenz zwischen den beiden Seiten der Fläche [K]

Wärmedunrchgangskoeffizient [W/(m²·K)] $k = 1 / (1 / \alpha_i + \sum{d / \lambda} + 1 / \alpha_i)$

## Wärmepumpenleistung

Heizleistung $P_{heiz} [kW] = P_{el} * E_{WP}$

$P_{el} = P_{heiz} / E_{WP}$

$E_{WP}$ = Leistungszahl

Erdsonde ca 90 Watt / m Sondenlänge

## Stromverbrauch der Wärmepumpe

Die elektrische Energie $E_{{el}}$, die von der Wärmepumpe verbraucht wird, hängt von der Effizienz der Wärmepumpe ab. Diese Effizienz wird durch die **Jahresarbeitszahl (JAZ)** beschrieben:

$$
E_{{el}} = \frac{Q_{{Heiz}}}{{JAZ}} \cdot t
$$

- $E_{{el}}$: Elektrischer Energieverbrauch der Wärmepumpe [kWh]
- $Q_{{Heiz}}$: Heizleistung der Wärmepumpe [kW]
- ${JAZ}$: Jahresarbeitszahl (dimensionslos), beschreibt das Verhältnis von erzeugter Wärmeenergie zu eingesetzter elektrischer Energie.
- $t$: Zeit, in der die Wärmepumpe läuft [h].

Ermittlung der Heizleistung aus dem Energie-
verbrauch von Öl- oder Gaskessel
Die erforderliche Heizleistung kann 
aufgrund des jährlichen Brennstoffverbrauchs Die Berechnungen basieren auf 20 °C Raumlufttemperatur bis 100 kW. Für grössere
Leistungen sollte nach Kap. 3.2 vorgegangen werden Dimensionierung
von Wärmepumpen Bundesamt für Energie https://pubdb.bfe.admin.ch/de/publication/download/165.

### Mittelland

- Mit Warmwasser Warmwasserbereitung ganzjährig Kessel
  
  $Q_H$ = Verbrauch / 300

- Ohne Warmwasser Warmwasserbereitung ganzjährig elektrisch
  
  $Q_H$ = Verbrauch / 265

### Über 800 m ü.M.

- Mit Warmwasser Warmwasserbereitung ganzjährig Kessel
  
  $Q_H$ = Verbrauch / 330

- Ohne Warmwasser Warmwasserbereitung ganzjährig elektrisch
  
  $Q_H$ = Verbrauch / 295

$Q_H$ = erforderlicher Heizleistungsbedarf bei Auslegetemperatur [kW]

Verbrauch in Liter Öl 

- 1 kg Öl entspricht ca. 1.19 Liter
- 1 Betriebs-m3 Gas entspricht ca. 0.93 Liter Öl

Zur Kontrolle der Resultate kann die spezifische Heizlei stung herangezogen werden. Sie errechnet sich aus der Heizleistung dividiert durch die Energiebezugsfläche (beheizte Bruttogeschossfläche):

| Gebäudetyp                              | W/m2      |
| --------------------------------------- | --------- |
| Herkömmlich wärmegedämmte Wohnhäuser    | 50 ... 70 |
| Gut wärmegedämmte bestehende Wohnhäuser | 40 ... 50 |
| Neubauten gemäss heutigen Vorschriften  | 30 ... 40 |
| Herkömmliche Dienstleistungsbauten      | 60 ... 80 |

brauche auch https://biber.solar/heat-pump-calculator/

---

## Heizleistung von Fosilen Heizungen

Heizenergie [MJ] $Q_F = m * H_s$

Heizleistung [kWh] $P = Q / t = m * H_s / t$

Masse $m$ [kg]

Heizwert $H_s$ [MJ/kg] oder [kWh/kg]

- Oel Extraleicht: 42,9 [MJ/kg]
- Erdgas:  37 [MJ/m³] / 10,305 [kWh/m³]

kWh = MJ / 3.6

$m = Q / H_s$

Anpassung Heizwert https://pubdb.bfe.admin.ch/de/publication/download/7442

Werte Gas: https://www.svgw.ch/media/9858/g10001_d_werte2022.pdf

### Umrechnung auf benötigte Leistung mit WP

$Q_{WPel}=Q_{WP}*\eta$ 

$Q_{WP}$= Benötige Wäremeleistung (EW Sperrfrist beachten)

$Q_{WPel}$= Elektrische Aufnameleistung

$\eta$= Wirkungsgrad 

### Berechnung des jährlichen Energiebedarfs für Heizung

Energiebedarf (kWh) = (Heizlast / 28) * 16 * HGT Dabei gilt:

- Heizlast: Die benötigte Wärmeleistung des Hauses in kW
- 28: Differenz zwischen -8°C (Auslegungstemperatur) und 20°C (gewünschte - Raumtemperatur)
- 16: Angenommene tägliche Betriebsdauer der Heizung in Stunden
- HGT: Heizgradtage des Standorts
- [Heizgradtage HGT Schweiz](https://opendata.swiss/de/dataset/monatliche-heizgradtage-in-der-schweiz-gewichtet/resource/fc492ffc-1eb6-4919-af54-16998eaf7eaa)
  - [Heizgradtage HGT Ortschaften](https://www.hev-schweiz.ch/vermieten/nebenkostenabrechnungen/heizgradtage)
- [Heizgradtage HGT St. Gallen](https://opendata.swiss/de/dataset/heizgradtage-st-galler-stadtwerke/resource/da5ab61c-1b50-4d1f-83b5-f429723e60b8)

### Ermittlung der Heizlast für Neubauten:

Heizlast (kW) = beheizte Fläche (m²) * Heizlast pro m²

Energiebedarf (kWh) = (Heizlast / 28) * 16 * HGT

- plus ca. 250 W pro Person für den Warmwasserbedarf5

Für ein 140 m² Einfamilienhaus in Zürich mit 4 Personen:

      Heizlast: 140 m² * 35 W/m² = 4.9 kW
      HGT für Zürich: 32672
      Warmwasserbedarf: 4 * 250 W = 1 kW
      Energiebedarf = ((4.9 + 1) / 28) * 16 * 3267 ≈ 11,900 kWh pro Jahr

## Wärmepumpen Regelung

Fast alle Wärmepumpen tragen ein Label namens "SG Ready", weil das eine Förderbedingung ist in Deutschalnd. 
SG Ready ist ein simples binäres Zweidraht-Zustandssystem, das folglich 4 Zustände abdeckt: 0:0, 0:1, 1:0 und 1:1. Die Betriebszustände sehen so aus:

1. Nicht heizen, Sperrung, wie sie z. B. für die Sperrzeiten in Heiztarifen gebraucht wird

2. Normalbetrieb mit einer Leistung, die Wärme auch für eventuelle Sperrzeiten produziert

3. Erhöhter Normalbetrieb nach vorher hinterlegten Parametern als "Einschaltempfehlung". Die WP-Steuerung kann dennoch entscheiden, dass jetzt nicht eingeschaltet wird.

4. Anlaufbefehl mit vorher hinterlegten Parametern für Leistung, z. B. für höhere Vorlauftemperaturen

Bei der Verwendung der Einschaltempfehlung mit erhöhten Temperaturkurven. Diese Variante hat gegenüber dem Anschaltzwang den Vorteil, dass die Wärmepumpensteuerung das letzte Wort hat und bei überlaufenden Wärmespeichern und geschätzter Nutzlosigkeit des Laufes trotzdem nicht einschaltet. Sie hat den Nachteil, dass sie keinen größeren Plan berücksichtigen kann, zum Beispiel mit Prognosedaten. 

# Stromverbrauch

Durchschnittlicher Verbrauch: Ein durchschnittlicher Schweizer Haushalt verbraucht etwa 5000 kWh pro Jahr ohne WP und E-Auto.

-Typischer Zwei-Personen-Haushalt:
    -In einem Mehrfamilienhaus: 2750 kWh/Jahr
    -In einem Einfamilienhaus: 3550 kWh/Jahr2

-Ein-Personen-Haushalt:
    -In einem Mehrfamilienhaus: 2200 kWh/Jahr
    -In einem Einfamilienhaus: 2700 kWh/Jahr2

-Vier-Personen-Haushalt:
    -In einem Mehrfamilienhaus: 3850 kWh/Jahr
    -In einem Einfamilienhaus: 5200 kWh/Jahr

[Stromverbrauch eines
typischen Haushalts Energie Schweiz](https://pubdb.bfe.admin.ch/de/publication/download/10559) 

Gesamtverbrauch Schweiz: 65 TWh = 10 hoch 12 W

Gesamterzeugung CH: 67 TWh

8% sind Erneuerbar

30% Atom

# Versorgungsnetz in der Schweiz

| Netzebene                    | Kraftwerke                           | Vebraucher            | Spannung                   |
| ---------------------------- | ------------------------------------ | --------------------- | -------------------------- |
| 1 Übertragungsnetz           | Pumpspeicher, Kernkraft, Wasserkraft | Schwerindustrie, SBB  | Höchstspannung 220/380 kV  |
| 2                            | Übertragungsnetz                     |                       |                            |
| 3 Überregionale Verteilnetze | Wasserkraft                          | Industrie             | Hochspannung 36 bis 220 kV |
| 4                            | Übertragungsnetz                     |                       |                            |
| 5 Regionale Verteilnetze     | Thermisch                            | Dienstleistungsbauten | Mittelspannung 1 bis 36 kV |
| 6                            | Übertragungsnetz                     |                       |                            |
| 7 lokale Verteilnetze        | Wind, Photovoltaik, Biogas           | Büros, Wohnen         | Niederspannung 400 / 230 V |

# Abkürzungen und Namen

AC Wechselstrom 

DC Gleichstrom

EnFV Energieförderverordnung

EnG Energiegesetz

EnV Energieverordnung

EVU Energieversorgungsunternehmen

GAK Generator Anschluss Kasten Im Generatoranschlusskasten werden die Stränge der Solarmodule an String-Sammelklemmen zusammengeführt, Überspannungsableiter

GREIV Einmalvergütung für grosse Anlagen. Betreiber von Anlagen mit einer 
Leistung von mehr als 100 kW können ab 2018 zwischen EVS und GREIV 
wählen.

HV Hauptverteilung

IEC International Electrotechnical Commission 

KLEIV Einmalvergütung für kleine Anlagen. Betreiber von Anlagen mit einer 
Leistung von weniger als 100 kW erhalten ab 2018 ausschliesslich die 
KLEIV.

MPP-Tracker Maximal-Leistungspunkt-Suche

NIN Niederspannungs-Installations-Norm

Pronovo Unterem anderem zuständig für die Ausstellung von Herkunftsnachweisen 
und Abwicklung der Förderprogramme des Bundes für die Stromproduktion 
aus neuen erneuerbaren Energien.

PV Photovoltaik

RE Rundsteuerempfänger

SENS Die Stiftung SENS (Sustainability, Expertise, Network, Solution) ist eine 
unabhängige, neutrale und nicht gewinnorientierte, gemeinnützige Stiftung 
und tritt gegen aussen mit der Marke SENS eRecycling auf.

STC Standart Test Conditions  (25°C, 1000 W/m2, 1,5 AM Atmosphärendick / Spektrum) Testkondition für Modulmessungung

SIA Schweizerischer Ingenieur- und Architektenverein

UV Unterverteilung

Üu Überstrom Unterbrecher

ÜA Überspannungsableiter 

VKF Vereinigung Kantonaler Feuerversicherungen

VNB Verteilnetzbetreiber

NIV-14 Niederspannungs-Installationsordnung Artikel 14 erlaubt die Installation spezifischen elektrischen Anlagen inbesondere Photovoltaik anlagen und andere wie USV-Anlagen etc.

NOCT Normal Operating Cell Temperature (20°C, 1 m/s Wind, 800 W/m2, 1,5 AM Atmosphärendick / Spektrum) Testkondition für Modulmessungung

ESTI Eidgenössisches Starkstrominspektorat nimmt unter anderem die NIV-14 Prüfung ab

Hans Carl von Carlowitz Begründer dern Nachhaltigkeit

Gro Harlem Bruntland moderne Definition der Nachhaltigkeit.

HAK Hausanschlusskasten

ZEV Zusammenschluss zum Eigenverbrauch hinter dem HAK, es müssen eigene Zähler eingebautt werden. Zähler müssen geicht sein. zevvi.ch. Müssen Messmittel für elektrische Energie und Leistung (EMmV) entsprechen. Zähler müssen von Metas abgenommen werden.

METAS Eidgenössischen Institut für Metrologie Die Eichgültigkeitsdauer für elektronische Elektrizitätszähler beträgt zehn Jahre, für elektromechanische Zähler fünfzehn Jahre. Nach Ablauf dieser Fristen ist eine Nacheichung durch eine vom Eidgenössischen Institut für Metrologie (METAS) ermächtigte Eichstelle erforderlich. 

vZEV Virtueller Zusammenschluss zum Eigenverbrauch in der selben Netzebene 7 ab 2016

EVG Eigenverbrauchsgemeinschaft, Die EVG besteht aus Eigentümer/Betreiber der Solaranlage und mehreren Endverbrauchern. EW kann Zählers stellen bzw einen zusätzlichen für die PV Anlage anbieten. EW Infrastruktur wird genutzt.

LEG lokale Elektrizitätsgemeinschaft können sich Solarstrom-Produzentinnen, Speicher-Betreiber sowie Endverbraucherinnen und Endverbraucher innerhalb des gleichen Gemeindegebiets zusammenschliessen und so lokal produzierten Strom lokal verbrauchen. Am 9. Juni 2024 hat das Schweizer Stimmvolk dem revidierten Stromversorgungsgesetz zugestimmt. Somit wird es künftig möglich sein, lokal erzeugte Elektrizität über das öffentliche Netz innerhalb eines Quartiers oder einer Gemeinde zu vermarkten. gemeindeleg.ch / leg-register.ch

- Örtliche Nähe: Die Teilnehmenden (Solarstrom-Produzenten, Speicher-Betreiberinnen und Endverbraucher) müssen sich im gleichen Netzgebiet, auf der gleichen Netzebene und im gleichen Gemeindegebiet befinden.
- Definierte Mindestleistung: Solaranlagen in der LEG müssen eine Mindestleistung von 20 Prozent* im Verhältnis zur Anschlussleistung aller LEG-Endverbraucherinnen und Endverbraucher aufweisen.
- Geeignete Messausstattung: Alle Teilnehmenden müssen mit einem kommunikativen, digitalen Stromzähler (Smart Meter) ausgestattet sein.

Pixpro solarmarkt

# Energie Formen und Quellen

Es gilt die Energieerhaltung.

Energieformen:

- Chemisch
- Kinetisch
- Elektrisch
- Thermisch
- Strahlungsenergie
- Lageenergie
- Rotation
- Kernenergie
- Photosynthese

Bsp: Kohlekraftwerk: Chemisch -> Thermisch -> Kinetisch -> Elektrisch

Primärenergie 100%: Unverarbeitete Rohstoffe, wie Kohle, Erdöl, Baum

Sekundärenergie: Verarbeitetes Material, wie Diesel, Pellets, Strom

Endenergie: Energie beim Vebraucher, wie Strom, Pellets vor der Haustüre, Diesel im Tank

Nutzenergie: Energie die genutz wird, Wärme eines Föhnes, Energie mit der der Computer betrieben wird

Verfügbarkeit:

| Recource | Reserven         | Dauer          |
| -------- | ---------------- | -------------- |
| Erdöl    | 230 GT           |                |
| Kohle    | 230 GT           |                |
| Erdgas   | 188 Billionen m3 | 3 Billionen m3 |
| Uran     | 1,8 Mt           | 14 Mt          |

## Vorteile / Nachteile Erneuerbare Energien

### Photovoltaik

| Vorteile                    | Nachteile               |
| --------------------------- | ----------------------- |
| Einfache Installation       | Produktion nur tagsüber |
| Kostengünstig 0.13 CHF / WP | Wirkungsgrad gering     |
| Betrieb Emmisionsfrei       | Abhängigkeit von China  |

### Solarthermie

| Vorteile                                                           | Nachteile                        |
| ------------------------------------------------------------------ | -------------------------------- |
| Wirkungsgrad höher als PV (~60 % Kollektorwirkungsgrad bei dT=40K) | Schwierigere Installation als PV |
| Gut Speicherbar                                                    | Nur Wärme                        |

### Windkraft

| Vorteile                                         | Nachteile                                                        |
| ------------------------------------------------ | ---------------------------------------------------------------- |
| Produziert auch nachts, wenn PV nicht produziert | Gesellschaftliche Akzeptanz geringer als bei PV und Solarthermie |
| Hohe Leistung                                    | Beeinträchtigung Landschaftsbild                                 |

### Wasserkraft

| Vorteile                                                            | Nachteile                        |
| ------------------------------------------------------------------- | -------------------------------- |
| Schwarzstartfähig (d.h. kann Netz nach Black Out wieder hochfahren) | Grösserer Eingriff ins Ökosystem |
| Langzeitspeicherung von Energie möglich                             | Geringe Energiedichte            |
| Steuerbar                                                           |                                  |
| Immer Verfügbar                                                     |                                  |

### Biomasse

| Vorteile                          | Nachteile                            |
| --------------------------------- | ------------------------------------ |
| Verwertung Bioabfälle             | Hohe Investitionen                   |
| Vielseitig nutzbar (Strom, Wärme) | Komplexe Technik                     |
| Speicherbar => Grundlastfähig     | Anlage muss dicht sein, sonst können |
| Klimagase entweichen              |                                      |

## Sonnenenergie

E = m * c2

c = 2.998e+8 m/s

m = differenz Masse Helium Wasserstoff

Energie kann aus Umwandlung von Masse kommen nur in der Sonne wenn Wasserstoff in Helium umgewandelt werden

15.8 MW/m2 Sonnen Abstrahlung

Abstand 150 Mio km

1367 W/m2 erreichen die Erde

1000 W/m2 gem STC

Auf dem boden gem SolarGIS am Wendekreis

mal wirkungsgrad der PV Anlage

## Treibhauseffekt

Wir sind bei 427 ppm in 2024, 
vor der Industrialisierung war es ca 280 ppm, anstieg von über 50 % ca 147 ppm.

Die Globale Durschnitstemperatur 2025 hat sich um 1,2 bis 1,3 °C erhöht zum vorindustriellen Niveau.

2024 Gabe es einzelne Monate die 1,5 °C über dem vorindustriellen Niveau lagen.

Aktuell ist die Schweiz 2.8 °C über dem 
vorindustriellen Zeitalter

Treibhausgasemissionen Schweiz Inland und 
Importe: 13 t / Kopf

2022 sind Treibhausgasemissionen gegenüber 
1990 in CH um 24% gesunken

#### Anteile der CO2 Emissionen in der Schweiz

- 21% Landwirtschaft, Abfallbehandlung, Ausstoss synthetischer Gase
- 23% Gebäude
- 23% Industrie
- 33% Verkehr (ohne int. Flüge)

### Konsequenzen

- Extremwetterereignisse nehmen zu
- Meeresspiegel steigt
- Ökosystem kann sich nicht mehr schnell genug anpassen => 
  Artensterben
- Gesundheitsrisiken 
- Die Auswirkungen machen sich besonders in Entwicklungs- und 
  Schwellenländern bemerkbar => mehr Migration

### Kipppunkte

- An einem Kipppunkt fällt ein System von einem Zustand irreversibel in 
  einen anderen
- Wird ein Kipppunkt erreicht, lässt sich dieser auf sehr lange Zeit nicht 
  mehr rückgängig machen, auch wenn die Emissionen reduziert werden
- Einige Kipppunkte beschleunigen die CO2 Emissionen und damit den 
  Klimawandel („positive Rückkopplung“ = Ein Effekt verstärkt seine 
  eigene Ursache) 
- Arktischer Eisschild reflektiert viel Sonnenlicht direkt zurück ins All => 
  Verkleinerung des Eisschildes bedeutet weniger Reflektion
- Permafrostboden könnte auftauen und gigantische Mengen 
  gebundenes CO2
  freisetzen

### Pariser Klimaziele

- Vereinbart 2015 auf der Weltklimakonferenz in Paris 
- Die Erderwärmung soll auf deutlich unter 2.0 °C, besser 1.5°
  gegenüber dem Vorindustriellen Zeitalter begrenzt werden (aktuell 
  bereits bei 1.1° im globalen Durchschnitt, 1.6° auf dem Festland1))
- Ärmere Länder sollen finanziell unterstützt werden 
- Es gibt keine Strafen für Zielverfehlungen…

## Energiestrategie 2050

- 2007 wurden vier Säulen festgelegt:
- - Energieeffizienz verbessern und Energie sparen
- - Ausbau Erneuerbare Energien
- - Sanierung und Neubau von Grosskraftwerken (inkl. Kernkraft)
- Energieaussenpolitik 
- Ziele: bis 2050 die Treibhausgasemissionen auf Netto-Null senken (Netto-Null = Emissionen maximal so hoch, wie die natürlichen und technischen 
  Aufnahmekapazitäten der Schweiz) 
- Ziel für 2050 Netto-Null, für 2030 halbieren 
  gegenüber 1990
- Planetare Belastbarkeitsgrenze: 0,6 t / Kopf

### Massnahmen

- Liberalisierung Strommarkt (Stromversorgungsgesetz)
  21.02.2025 
- Seit 2018 Netzzuschlag von 2.3 Rp. für Netzzuschlagfonds für 
  Energieeffizienzmassnahmen
- Gebäudeprogramm, finanziert u.a. durch CO2 Abgabe 
- Gebäudesanierung kann steuerlich geltend gemacht werden
- Emissionsobergrenzen für Verkehr (Reduktion von 130 g CO2/km auf 95 g CO2/km)
- Wettbewerbliche Ausschreibungen (Förderung von besonders sparsamen 
  Massnahmen)
- Investitionsbeiträge für PV (pronovo) und Wasserkraft > 10 MW 
- Nationales Interesse (Gerichtsentscheide bei Konflikt EE vs. Naturschutz)
- Kürzere Bewilligungsverfahren (für EE Anlagen und Netzausbau)
- Keine neuen AKWs

### Co2 Gesetz Schweiz

Ziele:

- CO2 Ausstoss bis 2030 halbieren gegenüber 1990 (ca. 800.000 TJ)
- ¾ der Massnahmen zur CO2 Reduktion im Inland

Steuerwerkzeuge:

- Abgabe auf jede Tonne CO2
- Anpassung der Abgabe je nach erreichter Verminderung
- Einnahmen gehen zu 1/3 an Bevölkerung via Krankenkasse, 1/3 an 
  Wirtschaft und AHV, 1/3 an Gebäudeprogamm

### [Energiegesetz 9.6.2024](https://www.fedlex.admin.ch/eli/fga/2023/2301/de)

[Energieproduktion EE ohne Wasserkraft 2022 ca. 7.7 TWh](
https://de.statista.com/statistik/daten/studie/329694/umfrage/stromerzeugung-in-der-schweiz-nach-energietraeger/)
Vorgaben im Gesetz: 

- 2035 mind 35 TWh
- 2050 mind 45 TWh
- bei 300 m2 Gebäudefläche ist eine Solaranlage Plicht

Lokale Eletrizitätsgemeinschaften LEG um Energie innerhalb dieser Gemienschaft abzusetzen Voraussetzungen sind:

- im gleichen Netzgebiet
- gleiche Netzebene
- örtliche nahe beieinander am Netz angeschlossen sind
- gemeinsame ein Mindestmasse and Erzeugern zu den Verbrauchern aufweisen

Verbrauchsziele: der Verbrauch ist pro Person und Jahr 2000 bis 2035 um 43% und bis 2050 um 53 % zu senken.

# Übersicht Vorschriften, Normen, Standards

- Vorschriften sind einzuhalten: z.B. Energiegesetz, kantonale Vorschriften
- Verordnungen sind einzhualten: z.B. NIV (Niederspannungs-Installations-Verordnung) mit Art. 14
- Normen sind Handlungsempfehlungen: ISO (International), SIA (Ingenieur- und 
  Architektenvereins), ElectroSuisse z.B. NIN 
  (Niederspannungs-Installations-Norm)
- Standards sind freiwillig: z.B. Minergie, GEAK 

## Vorschriften

- Energiedirektorenkonferenz (EnDK): Forum der Energiebereichsleiter 
  der einzelnen Kantone. Koordinieren Energiefragen und kantonale 
  Interessen
- Erlässt „Mustervorschriften der Kantone im Energiebereich“ (MuKE) => 
  Leitfaden für kantonale Energievorschriften
- Um was geht’s in MuKE 2014? (Skript S.59)
- Neubauten müssen angemessenen Anteil an Stromverbrauch selbst 
  produzieren
- Min. 10% der Heizenergie muss aus erneuerbaren Quellen kommen nach 
  Heizungswechsel
- Einführung GEAK 
- U-Grenzwerte für Bauteile

## Gebäudeenergieausweis der Kantone (GEAK)

- Gibt die Energieeffizienz der Gebäudehülle und den standardmässigen
  Energieverbrauch eines Gebäudes an
- Bewertungsskala von A bis G, zeigt Verbesserungspotenziale auf
- Wird von einem GEAK Experten bewertet
- Gut geeignet für Modernisierungsmassnahmen
- Schafft schweizweit eine Vergleichbarkeit
- Zusätze von GEAK plus:
- Beratungsbericht mit Beschreibung konkreter Modernisierungsmassnahmen in bis zu 
  drei Varianten
- Priorisierung der Massnahmen
- GEAK wird vom Gebäudeprogramm in SG und AR nicht gefördert, in TG 
  pauschal, AI fördert 
- [www.geak.ch](https://www.geak.ch)

## Minergie - Standard

- Freiwilliger Baustandard für Energieeffizienz
- Gültig für Neubauten und Sanierungen
- Hauptansatzpunkte sind die Gebäudehülle, Lufterneuerung und 
  geringer Energiebedarf
- Ziele:
- Verbesserung der Wohnqualität durch warme Oberflächentemperatur, 
- Werterhalt von Gebäuden, 
- geringere Heizkosten und Unabhängigkeit von Energiepreisen
- Verminderter CO2
  -Ausstoss
- Abstufungen: Minergie < Minergie-P < Minergie-A
- Finanzielle Anreize und Förderungen: Förderung - Minergie

## Gebäudeprogramm

- Energieförderportal St. Gallen: Förderportal (sg.ch)
- Kantonale Förderprogramme: https://portal.dasgebaeudeprogramm.ch/
- Gefördert werden Heizungs- und Gebäudesanierungen, PV und 
  weitere Massnahmen
- Die geförderten Massnahmen hängen von der jeweiligen 
  Gemeinde ab (z.B. St. Gallen kein PV [wird eigenständig von der 
  Stadt gefördert], dafür in Wattwil)

## Fördermassnahmen PV und Solarthermie

- Montagearten: Freistehend, Angebaut, Integriert
- Förderung auf Bundes-, Kantons- und Gemeindeebene
- Für jede Gemeinde sind ein grosser Teil der Förderprogamme
  einsehbar unter: [www.energiefranken.ch](https://www.energiefranken.ch/de) (Achtung: Gemeindeförderungen werden oft nicht aufgeführt)
- Pronovo
- Energiefonds Stadt St. Gallen
  Antrag Fördergelder: [Login | Kundenportal Pronovo](https://kundenportal.pronovo.ch/)
- Rechner Förderbeitrag: [www.pronovo.ch](https://pronovo.ch/)

# Links

https://www.geoportal.ch/

https://www.uvek-gis.admin.ch/BFE/sonnendach/

https://solargis.com/resources/free-maps-and-gis-data
