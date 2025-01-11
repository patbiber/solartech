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

![Sternschaltung](https://upload.wikimedia.org/wikipedia/commons/tH_smb/8/86/Sternschaltung.svg/250px-Sternschaltung.svg.png)

$I = I_p$

$U = \sqrt3 * U_p$ = 400V

$U_p$ = 230 V

[Wikipedia Sternschaltung](https://de.wikipedia.org/wiki/Sternschaltung)

### Dreickschaltung

![Dreieckschaltung](https://upload.wikimedia.org/wikipedia/commons/tH_smb/e/e2/Dreieckschaltung.svg/330px-Dreieckschaltung.svg.png)

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

$ A = (l * h )/2

## Kreis

$ A = (d²*\pi)/ 4$


# Heizleistung und Wärmeübertragung

## 1. Heizleistung bei Massefluss

Wenn ein Medium (z. B. Wasser) durch eine Temperaturänderung erwärmt oder abgekühlt wird, lautet die Formel:

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


---

## 2. Heizleistung bei Wärmeübertragung durch eine Fläche

Wenn Wärme durch eine Fläche (z. B. durch eine Wand) übertragen wird, lautet die Formel:

Wärmeleistung [W] $P = A \cdot k \cdot \Delta t$

- $A$: Fläche der Wärmeübertragung [m²]
- $k$: Wärmedurchgangskoeffizient [W/(m²·K)] (Materialabhängig)
- $\Delta t$: Temperaturdifferenz zwischen den beiden Seiten der Fläche [K]

Wärmedunrchgangskoeffizient [W/(m²·K)] $k = 1 / (1 / \alpha_i + \sum{d / \lambda} + 1 / \alpha_i)$

Heizleistung [W] $P = \frac{Q}{t}$

## Wärmepumpenleistung

Heizleistung $P_{heiz} [kW] = P_{el} * E_{WP}$

P_{el} = P_{heiz} / $E_{WP}$

$E_{WP}$ = Leistungszahl

Erdsonde ca 90 Watt / m Sondenlänge


## Stromverbrauch der Wärmepumpe

Die elektrische Energie $E_{\text{el}}$, die von der Wärmepumpe verbraucht wird, hängt von der Effizienz der Wärmepumpe ab. Diese Effizienz wird durch die **Jahresarbeitszahl (JAZ)** beschrieben:

$$
E_{\text{el}} = \frac{Q_{\text{Heiz}}}{\text{JAZ}} \cdot t
$$

- $E_{\text{el}}$: Elektrischer Energieverbrauch der Wärmepumpe [kWh]
- $Q_{\text{Heiz}}$: Heizleistung der Wärmepumpe [kW]
- $\text{JAZ}$: Jahresarbeitszahl (dimensionslos), beschreibt das Verhältnis von erzeugter Wärmeenergie zu eingesetzter elektrischer Energie.
- $t$: Zeit, in der die Wärmepumpe läuft [h].


---
## Heizleistung von Fosilen Heizungen

Heizenergie [MJ] $Q = m * H_s$

kWh = MJ / 3.6

Heizleistung [kWh] $P = Q / t = m * H_s / t$

Masse $m$ [kg]

Brennwert $H_s$ [MJ/kg] oder [kWh/kg]

|Brennstoff      |Brennwert [MJ/kg]|
|----------------|---------|
|Oel Extraleicht | 42     |
|Oel Schwer      | 39,8   |
|Erdgas          | 31,8   |
|Propan          | 100,56 |
|Erdgas          | 113,1  |

$ m = Q / H_s $




