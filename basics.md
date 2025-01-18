# Elektrotechnik für Solarteure Basics ☀️ 👷

## Der einfache Stromkreis ⚡

### Ohmsches gesetz Ω

Spannung Volt [V] $U=R*I$

Stomstärke Ampère [A] $I=\frac{U}{R}$

Wiederstand Ohm [ $\Omega$ ] $R=\frac{U}{I}=(\rho*l)/A$

$\rho$ = spezifischer Wiederstand [ $\Omega$ mm²/m]

l = Leitungslänge [m]

$A$= Stromdichte [A / mm²]

## Erlaubte Stromdichte für Leitungs Querschnitt

| Stromdurchfluss [A]| Querschnitt [mm²]| 
|--------------------|------------------|
|200                 | 95               |
|160                 | 70               |
|100                 | 35               |
|80                  | 25               |
|69                  | 16 (Erdung)      |
|50                  | 16 (Erdung)      |
|40                  | 10               |
|32                  | 6                |
|25                  | 6                |
|20                  | 4                |
|16                  | 2,5              |
|16                  | 1.5              |

Die Erdung hat immer 16 mm² 

### Stromarten 🤘 AC/DC

🔋 Gleichstrom (Direct Curren) DC -

🔌 Wechselstrom (Alternating Current) AC ~

## Schaltungen

### Serieschaltung

Alle Wiederstände sind vom selben Strom druchflossen:
$I = I_2 = I_3 = I_3$

Die Spannung wird von den Wiederständen proportional geteilt:
$U = U_1 + U_2 + U_3$

Die Widerstände werde addiert: 
$R = R_1 + R_2 + R_3$

### Parallelschaltung

Der Strom fliesst proportional:
$I = I_1 + I_2 + I_3$

Die Spannung ist an allen Wiederständen gleich:
$U=U_1=U_2=U_3$

Der  Kehrwert des Gesammtwiederstand ist die Summe der Kerhwerte der Einzelwiederstände: 
$1/R_p= 1/R_1 + 1/R_2 + 1/R_3$

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

Wirkungsgrad $\eta = P_n / P_a$ 

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

Wärmeenergie $Q [J][kWh] = m \cdot c \cdot \Delta t$

- $m$: Masse des Mediums [Kilogramm (kg)]
- $c$: Spezifische Wärmekapazität des Mediums [J/(kg·K)] (z. B. Wasser: $c$ approx 4.18, [kJ/(kg·K)]
- $\Delta t$: Temperaturänderung [K]


Wärmeleistung $P [W] = \frac{Q}{t} = \frac{m \cdot c \cdot \Delta t}{t}$

- $t$: Zeit [s]

### Rohrmasse und Max. Durchfluss

| Gewinderohr (") | Nennweite (DN) | Außendurchmesser (mm) | Max. Durchfluss (l/s) |
|-----------------|----------------|-----------------------|-----------------------|
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
Die erforderliche Heizleistung kann nach Weiersmüller [1]
aufgrund des jährlichen Brennstoffverbrauchs Die Berechnungen basieren auf 20 °C Raumluft-
temperatur. Sie ergeben speziell für Wohnbauten mit
Kesselleistungen bis 100 kW gute Resultate. Für grössere
Leistungen sollte nach Kap. 3.2 vorgegangen werden Dimensionierung
von Wärmepumpen Bundesamt für Energie https://pubdb.bfe.admin.ch/de/publication/download/165
.

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
|-----------------------------------------|-----------|
|Herkömmlich wärmegedämmte Wohnhäuser     | 50 ... 70 |
|Gut wärmegedämmte bestehende Wohnhäuser  | 40 ... 50 |
|Neubauten gemäss heutigen Vorschriften   | 30 ... 40 |
|Herkömmliche Dienstleistungsbauten       | 60 ... 80 |


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


# Stromverbrauch

Durchschnittlicher Verbrauch: Ein durchschnittlicher Schweizer Haushalt verbraucht etwa 5000 kWh pro Jahr.

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

