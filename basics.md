# Elektrotechnik für Solarteure Basics ☀️ 👷

## Der einfache Stromkreis ⚡

### Ohmsches gesetz Ω

Spannung Volt [V] $U=R*I$

Stomstärke Ampère [A] $I=\frac{U}{R}$

Wiederstand Ohm [ $\Omega$ ] $R=\frac{U}{I}=(\rho*l)/A$

$\rho$ = spezifischer Wiederstand [ $\Omega$ mm²/m]

l = Leitungslänge [m]

$A$= Stromdichte [A / mm²]

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

Arbeit [Ws] *Praxis [kWh]* $W = P * t = U * I * t * cos\phi$

*Gleichstrom: $cos\phi$ = 1*

Leistung [W] $P = W / t$

Leistung Gleichstrom / Scheinleistung [VA] / Omsche Last [W] $P = U * I = U2 / R = I²*R$

Leistung Wechselstrom Einphasig [W] $P = U * I * cos\phi$

Leistung Drehstrom Dreiphasig [W] $P = \sqrt{3} * U * I * cos\phi $

Elektrische Leistung (Gleichstrom): $P = U * I * cos\phi$

Leistungsfaktoktor $cos\phi = P /S$

Kosten = $W * Tarif$

Wirkungsgrad $\eta = P_n / P_a$ 

# Heizleistung und Wärmeübertragung

## 1. Heizleistung bei Massefluss

Wenn ein Medium (z. B. Wasser) durch eine Temperaturänderung erwärmt oder abgekühlt wird, lautet die Formel:

$Q = m \cdot c \cdot \Delta t$

### Bedeutungen:
- $Q$: Wärmeenergie [Joule (J) oder Kilowattstunden (kWh)]
- $m$: Masse des Mediums [Kilogramm (kg)]
- $c$: Spezifische Wärmekapazität des Mediums [J/(kg·K)] (z. B. Wasser: $c$ approx 4.18, [kJ/(kg·K)]
- $\Delta t$: Temperaturänderung [Kelvin (K) oder °C]

Um die **Wärmeleistung $P$ zu berechnen, gilt:

$P = \frac{Q}{t} = \frac{m \cdot c \cdot \Delta t}{t}$

- $P$: Heizleistung [Watt (W) oder Kilowatt (kW)]
- $t$: Zeit [Sekunden (s) oder Stunden (h)]

---

## 2. Heizleistung bei Wärmeübertragung durch eine Fläche

Wenn Wärme durch eine Fläche (z. B. durch eine Wand) übertragen wird, lautet die Formel:

$P = A \cdot k \cdot \Delta t$

### Bedeutungen:
- $P$: Wärmeleistung (Wärmefluss) [Watt (W) oder Kilowatt (kW)]
- $A$: Fläche der Wärmeübertragung [m²]
- $k$: Wärmedurchgangskoeffizient [W/(m²·K)] (Materialabhängig)
- $\Delta t$: Temperaturdifferenz zwischen den beiden Seiten der Fläche [K oder °C]

Diese Formel beschreibt die **Wärmeleitung durch Flächen**.

---

### Allgemeine Formel für Heizleistung:
$P = \frac{Q}{t}$

Die Formel gilt in zwei Szenarien:
1. **Bei Massefluss**:
   $P = \frac{m \cdot c \cdot \Delta t}{t}$
2. **Bei Wärmeleitung durch Flächen**:
   $P = A \cdot k \cdot \Delta t$

# Wärmepumpen und Stromverbrauch

## Heizleistung der Wärmepumpe

Die Heizleistung $Q_{\text{Heiz}}$ der Wärmepumpe beschreibt die Wärmeenergie, die bereitgestellt wird. Sie kann durch allgemeine Formeln für thermische Energie berechnet werden:

1. **Bei Massefluss (z. B. Erwärmung von Wasser):**
   $$
   Q_{\text{Heiz}} = m \cdot c \cdot \Delta t
   $$
   - $m$: Masse des Mediums [kg]
   - $c$: Spezifische Wärmekapazität des Mediums [J/(kg·K)]
   - $\Delta t$: Temperaturdifferenz [K]

2. **Bei Wärmeübertragung durch eine Fläche (z. B. durch eine Wand):**
   $$
   Q_{\text{Heiz}} = A \cdot k \cdot \Delta t
   $$
   - $A$: Wärmeübertragungsfläche [m²]
   - $k$: Wärmedurchgangskoeffizient [W/(m²·K)]
   - $\Delta t$: Temperaturdifferenz [K]

---

## Stromverbrauch der Wärmepumpe

Die elektrische Energie $E_{\text{el}}$, die von der Wärmepumpe verbraucht wird, hängt von der Effizienz der Wärmepumpe ab. Diese Effizienz wird durch die **Jahresarbeitszahl (JAZ)** beschrieben:

$$
E_{\text{el}} = \frac{Q_{\text{Heiz}}}{\text{JAZ}} \cdot t
$$

### Variablen:
- $E_{\text{el}}$: Elektrischer Energieverbrauch der Wärmepumpe [kWh]
- $Q_{\text{Heiz}}$: Heizleistung der Wärmepumpe [kW]
- $\text{JAZ}$: Jahresarbeitszahl (dimensionslos), beschreibt das Verhältnis von erzeugter Wärmeenergie zu eingesetzter elektrischer Energie.
- $t$: Zeit, in der die Wärmepumpe läuft [h].

---

## Zusammenhang zwischen Heizleistung und Stromverbrauch

1. Die Heizleistung $Q_{\text{Heiz}}$ wird durch die thermodynamischen Formeln berechnet:
   $Q_{\text{Heiz}} = m \cdot c \cdot \Delta t \quad \text{oder} \quad Q_{\text{Heiz}} = A \cdot k \cdot \Delta t$

2. Der elektrische Energieverbrauch ergibt sich aus der Heizleistung und der Effizienz:
   $E_{\text{el}} = \frac{Q_{\text{Heiz}}}{\text{JAZ}} \cdot t$

3. **Beispiel**:
   - Heizleistung der Wärmepumpe: $Q_{\text{Heiz}} = 6 \, \text{kW}$
   - Jahresarbeitszahl: $\text{JAZ} = 4$
   - Laufzeit: $t = 1000 \, \text{h}$
   - Elektrischer Energieverbrauch:
     $E_{\text{el}} = \frac{6}{4} \cdot 1000 = 1500 \, \text{kWh}$

---

# Solar Panel Auslegung

### Temperatur Korrektur für Leerlaufspannung Voc [V] 

Effektive Leerlaufspannung Voc = Leerlaufspannung Voc [V] @ 25 °C * Tempereaturkoeffizient Voc [%/°K] * $\Delta t$
