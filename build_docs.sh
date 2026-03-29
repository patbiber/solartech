#!/bin/bash
# =============================================================
# Solar Wiki – Docs Builder
# Ausführen in: /var/www/html/training.biber.solar/solartech/
# chmod +x build_docs.sh && ./build_docs.sh
# =============================================================

set -e
BASE="/var/www/html/training.biber.solar/solartech"
DOCS="$BASE/docs"
ASSETS="$DOCS/assets"

echo "======================================================"
echo "  Solar Wiki – Docs Builder"
echo "  Basis: $BASE"
echo "======================================================"

# --- Install ---
echo ""
echo "[1/3] Installiere MkDocs Material..."
pip3 install mkdocs-material pymdown-extensions --break-system-packages -q

# --- Ordner anlegen ---
echo "[2/3] Erstelle Ordnerstruktur..."
mkdir -p "$ASSETS"
mkdir -p "$DOCS/elektro"
mkdir -p "$DOCS/pv"
mkdir -p "$DOCS/st"
mkdir -p "$DOCS/wp"
mkdir -p "$DOCS/heizung"
mkdir -p "$DOCS/normen"

# --- Bilder als Symlinks (spart Speicher, Bilder bleiben im Repo-Root) ---
echo "       Verlinke Bilder..."
for f in "$BASE"/*.png "$BASE"/*.jpeg "$BASE"/*.jpg "$BASE"/*.webp; do
  [ -f "$f" ] && ln -sf "$f" "$DOCS/$(basename $f)" 2>/dev/null || true
done

# --- CSS ---
cat > "$ASSETS/extra.css" << 'CSS'
[data-md-color-scheme="slate"] {
  --md-primary-fg-color: #f97316;
  --md-accent-fg-color: #ea580c;
  --md-default-bg-color: #0d1117;
  --md-default-fg-color: #e6edf3;
  --md-code-bg-color: #161b22;
}
[data-md-color-scheme="slate"] .MathJax { color: #ffa040 !important; }
[data-md-color-scheme="slate"] table th { background-color: #1f2937; color: #f97316; }
[data-md-color-scheme="slate"] table tr:nth-child(even) { background-color: #161b22; }
CSS

# --- mkdocs.yml ---
cp "$BASE/mkdocs.yml" "$BASE/mkdocs.yml" 2>/dev/null || true

echo "[3/3] Erstelle Markdown-Seiten..."

# ============================================================
# INDEX
# ============================================================
cat > "$DOCS/index.md" << 'MD'
# ☀️ Solar & Haustechnik Wissen

Willkommen auf der Wissensplattform für **Solarteure und Haustechnik-Fachleute**.

<div class="grid cards" markdown>

-   :zap: **Elektro Grundlagen**
    ---
    Ohmsches Gesetz, Leiterberechnung, Schutzklassen, Drehstrom
    [:octicons-arrow-right-24: Zu Elektro](elektro/index.md)

-   :sunny: **Photovoltaik**
    ---
    Module, Wechselrichter, Auslegung, Schemata, Speicher
    [:octicons-arrow-right-24: Zu PV](pv/index.md)

-   :thermometer: **Solarthermie**
    ---
    Kollektoren, Speicher, Druckverlust, Expansionsgefäss
    [:octicons-arrow-right-24: Zu ST](st/index.md)

-   :fire: **Wärmepumpen**
    ---
    COP/JAZ, Wärmequellen, Erdsonden, Log-ph Diagramm
    [:octicons-arrow-right-24: Zu WP](wp/index.md)

-   :house: **Heizung & Hydraulik**
    ---
    Heizlast, Druckverlust, Warmwasser, Expansion
    [:octicons-arrow-right-24: Zu Heizung](heizung/index.md)

-   :clipboard: **Normen & Gesetze**
    ---
    Energiestrategie 2050, NIV, NIN, Abkürzungen
    [:octicons-arrow-right-24: Zu Normen](normen/index.md)

</div>

!!! tip "Tipp: Suchfunktion nutzen"
    Benutze die **Suchfunktion** oben rechts. Formeln: $P = U \cdot I \cdot \cos\phi$
MD

# ============================================================
# ELEKTRO
# ============================================================
cat > "$DOCS/elektro/index.md" << 'MD'
# ⚡ Elektro Grundlagen

| Thema | Inhalt |
|-------|--------|
| [Sicherheitsregeln](sicherheit.md) | 5+5 Regeln, SUVA |
| [Ohmsches Gesetz](ohm.md) | U, I, R |
| [Leistung & Energie](leistung.md) | P, W, Wirkungsgrad |
| [Leiterberechnung](leiter.md) | Querschnitt, Spannungsabfall |
| [Drehstrom](drehstrom.md) | Stern, Dreieck |
| [Schutzklassen & IP](schutz.md) | IP-Schutzarten |
MD

cat > "$DOCS/elektro/sicherheit.md" << 'MD'
# 🦺 5 Sicherheitsregeln

Bei Arbeiten an elektrischen Anlagen sind die **5 + 5 Regeln** (SUVA 84042.d) zwingend anzuwenden.

## 1. Freischalten
- LS-Schalter abschalten
- Schmelzsicherung entfernen
- Allpoliger Hauptschalter betätigen

## 2. Gegen Wiedereinschalten sichern
- Betätigungsmechanismus durch **Schloss** sichern
- Sicherungseinsätze mitnehmen
- **Verbotsschilder** anbringen

## 3. Spannungsfreiheit feststellen
- Überprüfung mit **zweipoligem Spannungsprüfer**
- Spannungsfreiheit durch Fachkraft feststellen

## 4. Erden und kurzschliessen
!!! warning "Reihenfolge beachten"
    **Zuerst erden**, dann mit den kurzzuschliessenden aktiven Teilen verbinden.
    Entfällt bei Anlagen < 1000 V (Ausnahme: Freileitungen).

## 5. Benachbarte Teile abdecken
- **< 1000 V:** Isolierende Tücher, Schläuche, Formstücke
- **> 1000 V:** Zusätzlich Absperrtafeln, Seile, Warntafeln
- **Körperschutz:** Schutzhelm, enge Kleidung, Handschuhe
MD

cat > "$DOCS/elektro/ohm.md" << 'MD'
# Ohmsches Gesetz Ω

## Grundformeln

| Grösse | Einheit | Formel |
|--------|---------|--------|
| Spannung | Volt [V] | $U = R \cdot I = \frac{P}{I} = \sqrt{P \cdot R}$ |
| Stromstärke | Ampère [A] | $I = \frac{U}{R} = \frac{P}{U} = \sqrt{\frac{P}{R}}$ |
| Widerstand | Ohm [Ω] | $R = \frac{U}{I} = \frac{P}{I^2} = \frac{U^2}{P} = \frac{\rho \cdot l}{A}$ |
| Leitwert | Siemens [S] | $G = \frac{1}{R}$ |

## Versorgungsnetz Schweiz

| Netzebene | Verbraucher | Spannung |
|-----------|-------------|---------|
| 1 Übertragungsnetz | Schwerindustrie, SBB | 220/380 kV |
| 3 Überregional | Industrie | 36–220 kV |
| 5 Regional | Dienstleistung | 1–36 kV |
| 7 Lokal | Büros, Wohnen | 400/230 V |
MD

cat > "$DOCS/elektro/leistung.md" << 'MD'
# Leistung & Energie

## Leistungsformeln

| Formel | Einheit | Beschreibung |
|--------|---------|-------------|
| $P = U \cdot I$ | [W] | Gleichstrom / Scheinleistung |
| $P = U \cdot I \cdot \cos\phi$ | [W] | Wechselstrom einphasig |
| $P = \sqrt{3} \cdot U \cdot I \cdot \cos\phi$ | [W] | Drehstrom dreiphasig |
| $\cos\phi = P / S$ | [–] | Leistungsfaktor |

!!! info "Gleichstrom"
    Bei Gleichstrom und ohmschen Lasten gilt immer $\cos\phi = 1$

## Energie / Arbeit

$$W = P \cdot t \quad [Ws, J, kWh]$$

**Umrechnungen:**
- 1 Ws = 1 J
- 1 kWh = 3'600'000 J = 3.6 MJ
- 1 cal = 4.154 J &nbsp;|&nbsp; 1 PS = 735 W

## Wirkungsgrad

$$\eta = \frac{P_{ab}}{P_{auf}} = \frac{W_{ab}}{W_{auf}}$$

**Kettenwirkungsgrad:** $\eta_{ges} = \eta_1 \cdot \eta_2 \cdot \eta_n$

*Beispiel: $0.92 \cdot 0.93 \cdot 0.8 = 0.684 \rightarrow 68\%$*

## Stromverbrauch Schweiz

| Haushalt | MFH [kWh/a] | EFH [kWh/a] |
|----------|-------------|-------------|
| 1 Person | 2'200 | 2'700 |
| 2 Personen | 2'750 | 3'550 |
| 4 Personen | 3'850 | 5'200 |

Gesamtverbrauch CH: **65 TWh/a** | Gesamterzeugung: **67 TWh/a**
MD

cat > "$DOCS/elektro/leiter.md" << 'MD'
# Leiterberechnung

## Spannungsabfall

$$\Delta U = 2 \cdot \frac{\rho \cdot l \cdot I}{A} \quad [V]$$

- $\rho_{Cu} = 0.0175\ \frac{\Omega \cdot mm^2}{m}$ (Kupfer)
- **NIN:** max. 4% zwischen HAK und Verbraucher (= 9.2 V bei 230 V)
- Leitungslänge = **2 × Leitungslänge** (Hin + Rückleiter)

![Leiterberechnung](../Leiterberechnung.png)

## Kabelquerschnitt → Strombelastbarkeit

| Strom [A] | Querschnitt [mm²] |
|-----------|-------------------|
| 16 | 1.5 |
| 16 | 2.5 |
| 20 | 4.0 |
| 25 | 6.0 |
| 32 | 8.0 |
| 40 | 10 |
| 50 / 63 | 16 (Erdung) |
| 80 | 25 |
| 100 | 35 |
| 160 | 70 |
| 200 | 95 |

!!! info "Erdung"
    Die Erdung hat immer **16 mm²**

![Leiterbelastbarkeit](../Leiterbelastbarkeit.png)

## Leitungsverlust

$$P_v = \frac{U_v^2}{R_L} = I^2 \cdot R_L$$
MD

cat > "$DOCS/elektro/drehstrom.md" << 'MD'
# Drehstrom

## Sternschaltung

$$I = I_p \qquad U = \sqrt{3} \cdot U_p = 400\,V \qquad (U_p = 230\,V)$$

## Dreieckschaltung

$$U = U_p \qquad I = \sqrt{3} \cdot I_p$$

## Schmelzsicherungen – Kennfarben

| Nennstrom | Farbe |
|-----------|-------|
| 2 A | Rosa |
| 4 A | Braun |
| 6 A | Grün |
| 10 A | Rot |
| 16 A | Grau |
| 20 A | Blau |
| 25 A | Gelb |
| 35 A | Schwarz |
| 50 A | Weiss |
| 63 A | Kupfer |
MD

cat > "$DOCS/elektro/schutz.md" << 'MD'
# Schutzklassen & IP-Schutzarten

## IP-Schutzarten

![IP Schutzarten](../IP_Schutzarten.png)

![IP Schutzarten Bild](../IP_Schutzarten_Bild.png)

## Schutzklassen

![Schutzklasse](../Schutzklasse.png)
MD

# ============================================================
# PHOTOVOLTAIK
# ============================================================
cat > "$DOCS/pv/index.md" << 'MD'
# ☀️ Photovoltaik

## Schema PV-Anlage

![Schema PV](../Schema_PV.png)

**Komponenten:**
1. Solarmodule (PV-Generator)
2. DC-(String)-Leitung
3. Stringsicherungen
4. DC Wartungsschalter
5. Überspannungsableiter
6. DC-(Array)-Leitung
7. Wechselrichter

![Komplettes Schema](../komplettes_schema.png)
MD

cat > "$DOCS/pv/module.md" << 'MD'
# PV Module & Verschaltung

## Verschaltung

![Verschaltung Modul](../Verschaltung_Modul.png)

## Halbzellen & Verschattung

![Verschattung Halbzellen](../verschattung_und_verschaltung_Halbzellen.jpg)

## Reihenabstand

$$R = \left(\frac{\sin\alpha}{\tan\beta} + \cos\alpha\right) \cdot L$$

Tiefster Sonnenstand: **21. Dezember** → keine gegenseitige Verschattung

![Reihenabstand](../Reihenabstand.png)

## IU-Kennlinie

![IU Kurve](../IUP_Kurve.png)

## Winkelbezeichnungen

![Winkel](../winkelbezeichnung-solartechnik.jpg)

## Bestrahlung geneigte Ebene

![Bestrahlung](../bestrahlung-geneigte-ebene-bern.jpg)

## Solarstrahlung

| Kenngrösse | Wert |
|-----------|------|
| Globalstrahlung CH | 1100 kWh/m²/a |
| STC Testbedingung | 1000 W/m² |
| Atmosphäre (AM1.5) | 1367 W/m² |
| Ausrichtung ertragsoptimiert | 15°–30° Süd |
| Ausrichtung Eigenverbrauch | Ost-West 10°–20° |
MD

cat > "$DOCS/pv/wechselrichter.md" << 'MD'
# Wechselrichter

## Wechselrichterarten

![Wechselrichterarten](../Wechselrichterarten.png)

## Typenvergleich

| Typ | Einsatz | MPP-Tracker |
|-----|---------|-------------|
| **Modulwechselrichter** | Balkon, Kleinstanlagen | pro Modul, PLC |
| **Strangwechselrichter** | Klein-PV | 1 |
| **Multistrangwechselrichter** | Mittel/Gross ✓ Standard | mehrere |
| **mit Leistungsoptimierer** | Verschattet | Modulebene |
| **Zentralwechselrichter** | Grossanlagen | mehrere, MS |

## Auslegung

**1. Maximale DC-Leistung prüfen**

**2. Maximale Leerlaufspannung:**
$$U_{OC_{max}} = U_{OC_{STC}} \cdot n \cdot KF$$
→ Darf WR-Maximalspannung **nicht** überschreiten!

**3. Minimale Startspannung** prüfen

**4. MPP-Fenster:**

![MPP Bereich](../MPP_Bereich.png)

## Strangsicherung

$$1.5 \cdot I_{SC} < I_N < 2.4 \cdot I_{SC}$$

$$U_{Sicherung} > 1.2 \cdot U_{OC_{Strang}}$$

!!! warning "Rückstromgefahr"
    Strangsicherung notwendig wenn $I_{Rück}$ grösser als die zulässige Rückstrombelastbarkeit der Module.

## Maximaler Betriebsstrom

$$I_{DC_{max}} = I_{DC_{Modul}} \cdot 1.25 \quad \text{(NIN Faktor 1.25)}$$
MD

cat > "$DOCS/pv/auslegung.md" << 'MD'
# Auslegung & Berechnung

## Leistungsformeln

| Grösse | Formel | Einheit |
|--------|--------|---------|
| Scheinleistung | $S = U \cdot I = P / \cos\phi$ | [VA] |
| Wirkleistung | $P = U \cdot I \cdot \cos\phi$ | [W] |
| Leistungsfaktor | $\cos\phi = P / S$ | [–] |

!!! info "DC und ohmsche Lasten"
    $\cos\phi = 1$ → Scheinleistung = Wirkleistung
MD

cat > "$DOCS/pv/schema.md" << 'MD'
# Schemata & Schutz

## GAK – Generator Anschlusskasten

![GAK](../GAK.png)

1. Überspannungsschutz
2. DC-Hauptschalter
3. Strangüberwachung
4. Strangsicherung / Strangdioden

## Netzgekoppelte Anlage

![Netzgekoppelt](../Netzgekoppelt.png)

## Inselanlage

![Inselschema](../Inselschema.png)

![Schema Inselanlage](../Schema_Inselanlage.jpg)

## Überspannungsschutz SPD

| Typ | Verwendung | Restspannung | Querschnitt |
|-----|-----------|-------------|-------------|
| **Typ 1** | Mit Blitzschutz, Gebäudeeintritt | 4 kV | Cu 16 mm² |
| **Typ 2** | Ohne Blitzschutz, Gebäudeeintritt | 2.5 kV | Cu 10 mm² |
| **Typ 3** | Gerätefeinschutz (Server etc.) | 1.5 kV | – |

## Blitzschutz & Potentialausgleich

![Kontaktkorrosion Blitzschutz](../Kontaktkorrosion_Mat_Blitzschutz.png)

- Objekte > 2 m² müssen an Blitzschutz angebunden sein
- Blitzschutzleitungen **nie parallel** zur Traufe
- Alle **1 m** befestigt
- Chromstahlklemme als „Neutralisator" verwenden
MD

cat > "$DOCS/pv/bewilligung.md" << 'MD'
# Bewilligung & Förderung

## Ablauf PV-Anlage

1. **Baugesuch / Bauanzeige**
2. **TAG** – Technisches Anschluss Gesuch
3. **IA** – Installationsanzeige (vor Fertigstellung, NIV Art.7 oder Art.9)
4. **Apparatebestellung** (Kunde ohne Smartmeter, vor Baustart)
5. **MPP** – Mess- und Prüfprotokoll (nach Abschluss)
6. **SiNa** – Sicherheitsnachweis (nach Abschluss, periodisch)
7. **Externe Abnahmekontrolle** (Beglaubigung MPP + SiNa)
8. **Pronovo** – Herkunftsnachweis und EIV beantragen

## Förderung

| Förderart | Leistung | Link |
|-----------|----------|------|
| **KLEIV** | < 100 kW | [pronovo.ch](https://pronovo.ch) |
| **GREIV** | > 100 kW | [pronovo.ch](https://pronovo.ch) |
| Kantonale Förderung | – | [dasgebaeudeprogramm.ch](https://portal.dasgebaeudeprogramm.ch) |
| Gemeindeübersicht | – | [energiefranken.ch](https://www.energiefranken.ch/de) |

## ZEV / LEG

![ZEV zu LEG](../ZEVtoLEG.jpg)

| Begriff | Beschreibung |
|---------|-------------|
| **ZEV** | Zusammenschluss zum Eigenverbrauch – hinter dem HAK, eigene Zähler (METAS) |
| **LEG** | Lokale Elektrizitätsgemeinschaft – gleiche Netzebene, Smart Meter Pflicht, mind. 20% Eigenproduktion |
MD

cat > "$DOCS/pv/batterie.md" << 'MD'
# Batteriespeicher

## Lithium-Technologien

| Technologie | Energiedichte | Stabilität | Einsatz |
|-------------|--------------|------------|---------|
| **NMC** (LiNiMnCoO2) | 150–220 Wh/kg | Thermal Runaway möglich | E-Mobilität |
| **LFP** (LiFePO4) | 90–120 Wh/kg | Sehr stabil, schwer entflammbar | Heimspeicher |

!!! tip "LFP bevorzugen"
    LFP ist günstiger, stabiler und umweltfreundlicher – kein Kobalt.

## Optimierung & Monitoring

- Verbrauchsverhalten der Produktion anpassen
- Lasten intelligent schalten
- **Tools:** SolarLog, Loxone, solarmanager, SMA, Fronius Ohm Pilot
- Energiemessung am Übergabepunkt obligatorisch
MD

# ============================================================
# SOLARTHERMIE
# ============================================================
cat > "$DOCS/st/index.md" << 'MD'
# 🌡️ Solarthermie

![Solar Warmwasser](../SolarWarmwasser.png)

## Kennwerte

| Kenngrösse | Wert |
|-----------|------|
| Sonneneinstrahlung | 600–1000 W/m² |
| Globalstrahlung CH | 1100 kWh/m²/a |
| Optimaler Neigungswinkel | 40°–60° Winter, 25°–35° Sommer |
| Überschlagsregel | **1.5 m²/Person** |
| Fliessgeschwindigkeit Glykol | 0.6–1.0 m/s (optimal 0.7 m/s) |

![ST Anlage](../ST_Anlage.jpg)
MD

cat > "$DOCS/st/kollektor.md" << 'MD'
# Kollektorfläche berechnen

## Kollektorfläche

$$A_k = \frac{Q_{WWE} \cdot \alpha}{q} \quad [m^2]$$

## Jährlicher Wärmebedarf

$$Q_{WWE} = \frac{m \cdot c \cdot \Delta T \cdot 365}{3600} \quad [kWh/a]$$

| Variable | Bedeutung | Wert |
|----------|-----------|------|
| $c$ | Wärmekapazität Wasser | 4.187 kJ/(kg·K) |
| $q$ | Nutzwärmeertrag | Mittelland EFH: 500, MFH: 650; Alpen EFH: 650, MFH: 900 kWh/(m²a) |
| $\alpha$ | Verbrauchsdeckung | EFH: 0.55, MFH: 0.30–0.50 |
| $m$ | EFH Warmwasser | 50 l × Personen × 1.2 (inkl. 20% Verlust) |

## Überschlagsmässige Jahresdeckung

$$SD = \frac{A_k \cdot 400\,\text{kWh/m}^2}{\text{Vollaststunden}}$$

*Beispiel: $6\,m^2 \times 400 / 2700 = 8\%$*

![ST Approx A](../ST_approx_A.png)

![ST Approx Berechnung WW](../STapproxberechnungWW.jpeg)

![ST Puffer Approx](../ST_Puffer_approx.png)
MD

cat > "$DOCS/st/speicher.md" << 'MD'
# Speicher & Wärmetauscher

## Solar WW Speicher

$$V_{SP} = A_K \cdot V_S + V_Z \quad [l]$$

| Variable | Bedeutung | Wert |
|----------|-----------|------|
| $V_S$ | Solar Vorwärm-Volumen | 30–60 l/m² |
| $V_Z$ | Zusatzheizvolumen | $V_B \cdot f$ |
| $f$ | Faktor | Gas/Öl: 0.5 × Tagesbedarf; WP/Elektro: 1.0 × Tagesbedarf |
| $V_B$ | Bereitschaftsvolumen | 50 l/Person |

## Wärmetauscher

Ab **6 m² Kollektorfläche** → aussenliegender WT zwingend

$$A_{WT} = \frac{A_K \cdot \dot{Q}_K}{k \cdot \Delta T}$$

- $\dot{Q}_K$ Spez. Kollektorleistung ≈ 650 W/m²
- $\Delta T$ VL/RL zum Kollektor ≈ 10 K

## Rohre

![ST Rohre](../ST_Rohre.jpeg)

![ST Rohre 2](../ST_Rohre2.jpeg)
MD

cat > "$DOCS/st/pumpe.md" << 'MD'
# Umwälzpumpe & Druckverlust

## Volumenstrom

$$\dot{V} = A_k \cdot V_s \quad [l/h]$$

- High-Flow: 30–40 l/(m²·h)

## Druckverlust

$$\Delta p_{tot} = (\Delta p_{koll} + \Delta p_{WT} + \Delta p_{LTg}) \cdot f$$

$$\Delta p_{LTg} = \text{Länge} \cdot \frac{P}{m} \cdot 1.2$$

- Korrekturfaktor Glykol: $f = 1.2$ (20% Zuschlag für Formstücke)
- 100 Pa = 1 mbar &nbsp;|&nbsp; 10'000 Pa = 1 bar

## Förderhöhe

$$h_{Förder} = \frac{\Delta p_{tot}\,[\text{Pa}]}{1000 \cdot 9.81} \quad [mWs]$$

## Fülldruck

$$p_{Füll} = \frac{h_{Anlage}\,[\text{m}]}{10} + 0.3\,\text{bar} + 0.5\,\text{bar}$$

![ST Druckverlust](../ST_Druckverlust.jpg)

![Reibungsverlust](../Reibungsverlust.jpeg)
MD

cat > "$DOCS/st/expansion.md" << 'MD'
# Expansionsgefäss Solarthermie

## Vordruck

$$p_V = \frac{h_{Anlage}\,[\text{m}]}{10} + 0.3\,\text{bar}$$

## Ausdehnungsvolumen

$$V_{ex} = V_{sys} \cdot e \cdot x \quad [l]$$

$$V_{sys} = (V_{koll} + V_{SK}) \cdot 2$$

## Mindest-Nennvolumen

$$V_n = \frac{V_{ex} \cdot (P_E + 1)}{P_E - P_V} \quad [l]$$

| Variable | Beschreibung |
|----------|-------------|
| $P_E$ | Auslegungs-Enddruck = Gefässvordruck / 1.3 [bar] |
| $P_V$ | Auslegungs-Vordruck = $h/10 + 0.3$ [bar] |
| $e$ | Ausdehnungskoeffizient (Tabelle) |
| $x$ | Zuschlagsfaktor |

![ST Ausdehnungskoeffizient](../ST_ausdehnungskoeffizient.jpeg)

![ST Zuschlagfaktor](../ST_Zuschlagfaktor.jpeg)

![Ausdehnung Wasser](../AusdehnungWasser.png)
MD

# ============================================================
# WÄRMEPUMPEN
# ============================================================
cat > "$DOCS/wp/index.md" << 'MD'
# 🔥 Wärmepumpen

$$\underbrace{Q_0}_{\text{Verdampfung}} + \underbrace{P_{el}}_{\text{Strom}} = \underbrace{Q_c}_{\text{Kondensation}}$$

![WP Basic](../WP_basic.jpeg)

![Aggregatzustände](../WP_agregatzustaende.jpeg)

## Wärmequellen

| Quelle | Arten |
|--------|-------|
| **Wasser** | Fluss, See, Grundwasser, Brunnenwasser, Quellwasser |
| **Erdreich** | Erdwärmesonden, Erdkollektoren, Tiefenbohrung |
| **Luft** | Aussenluft, Fortluft, Prozessabwärme |
| **Abwärme** | Kühlwasser, Abwasser, Industrieabwärme |
MD

cat > "$DOCS/wp/cop.md" << 'MD'
# COP & JAZ

## COP – Coefficient of Performance

$$COP = \frac{\dot{Q}_h}{P_{auf}} = \frac{P_{ab}}{P_{auf}}$$

!!! tip "Merksatz"
    **Je kleiner der Temperaturhub** zwischen Quelle und Senke, desto **höher** der COP.

## JAZ – Jahresarbeitszahl

$$JAZ = \frac{Q_a}{E_a}$$

$$E_a = \frac{Q_a}{JAZ} \quad [kWh/a]$$

$$Q_{a_{EWS}} = Q_a - E_a \quad \text{(Umweltwärmebedarf)}$$

## Heizlast Dimensionierung (Schweiz)

| Region | Mit WW-Kessel | Ohne WW (elektr.) |
|--------|--------------|-------------------|
| **Mittelland** | $Q_H = \text{Verbrauch} / 300$ | $Q_H = \text{Verbrauch} / 265$ |
| **> 800 m ü.M.** | $Q_H = \text{Verbrauch} / 330$ | $Q_H = \text{Verbrauch} / 295$ |

Verbrauch in Liter Öl | 1 kg Öl ≈ 1.19 l | 1 m³ Gas ≈ 0.93 l Öl

## Jährlicher Energiebedarf Heizung

$$E_{Heiz} = \frac{\Phi_{HL}}{28} \cdot 16 \cdot HGT$$

*Beispiel 140 m² EFH Zürich, 4 Personen:*
$$\frac{(4.9 + 1)\,kW}{28} \cdot 16 \cdot 3267 \approx 11'900\,kWh/a$$

![Vollaststunden](../Vollaststunden.png)

![Spez. Jahreswärmebedarf](../spez_Jahreswaermebedarf.png)

![Energieinhalte Wirkungsgrad](../Energieinhalte_Wirkungsgrad.png)
MD

cat > "$DOCS/wp/typen.md" << 'MD'
# Wärmequellen & WP-Typen

## Luft/Wasser WP

### Innenaufgestellt
**Vorteile:** Keine Schallemissionen nach aussen, kein Frostschutz nötig
**Nachteile:** Platzbedarf Luftkanäle, Gefahr Luftkurzschluss

### Aussenaufstellung
**Vorteile:** Geringer Platzbedarf im Gebäude, einfacher baulicher Aufwand
**Nachteile:** Schallemissionen, Baubewilligung, Frostschutz Leitungen

### Split Anlagen
**Vorteile:** Kostengünstig, geringer Platzbedarf
**Nachteile:** Geringere Effizienz, begrenzte Leistung, höherer Kältemittelinhalt

## Betriebsarten

| Betriebsart | Beschreibung | Typischer Zusatz | Einsatz |
|-------------|-------------|-----------------|---------|
| **Monovalent** | WP allein, 100% | – | Neubauten |
| **Monoenergetisch** | WP + Elektrostab Spitzenlast | Elektroheizstab | Standard CH/DE |
| **Bivalent-parallel** | WP + Kessel gleichzeitig | Öl-/Gaskessel | Sanierungen |
| **Bivalent-alternativ** | WP bis Bivalenzpunkt, dann Kessel allein | Öl-/Gaskessel | Altbauten, Kalt |
| **Multivalent** | Mehrere Systeme kombiniert | WP + ST + Gas | Grossgebäude |

## Kältemittel

![Kältemittel](../WP_Kaeltemittel.jpeg)

**Vorteile natürlicher Kältemittel:**
- Kleines **GWP** (Global Warming Potential)
- Kleines **ODP** (Ozonabbaupotential)
- Gute thermodynamische Eigenschaften
MD

cat > "$DOCS/wp/erdsonde.md" << 'MD'
# Erdsonden (EWS)

## Entzugsleistung

$$l_{EWS} = \frac{Q_a \cdot \left(1 - \frac{1}{JAZ}\right)}{q_{spez,EWS}} \quad [m]$$

| Kenngrösse | Wert |
|-----------|------|
| Entzugsleistung pro m | 0.035 kW/m (max. Tiefe 250 m) |
| Entzugsenergie pro m | 70 kWh/m (max. Tiefe 250 m) |

![WP Q EWS](../WP_Q_ews.png)

## Abstände (Kanton Zürich, AWEL-Merkblatt)

| Mindestabstand | Wert |
|---------------|------|
| Zwischen 2 Sonden | 7–8 m (Minimum 5 m) |
| Zur Grundstücksgrenze | 3 m |
| Zu Gebäuden | 2 m |

!!! warning "Turbulente Strömung"
    In den EWS-Rohren **turbulente Strömung** sicherstellen –
    sonst sinkt die Quellentemperatur um ca. 1.5 K (tiefere Verdampfung).

## Grundwasser-WP

$$\dot{m}_{GW} = \frac{\dot{Q}_k \cdot 3600}{c \cdot (t_{Ein} - t_{Aus})} \quad [kg/h]$$

![WP Sole](../WP_sole.jpeg)

![Sicherheitseinrichtungen](../Sicherheitseinrichtungen.png)
MD

cat > "$DOCS/wp/logph.md" << 'MD'
# Log-p/h Diagramm

## Kreisprozess

![Log ph Diagramm](../WP_log_ph.jpeg)

![Log ph Kreisprozess](../WP_log_ph_kreis.jpeg)

## Überhitzung

![Überhitzung](../WP_ueberhitzung.jpeg)

## Enthalpien & Stoffe

![Enthalpien von Stoffen](../Enthaplien_von_stoffen.png)

![Spez. Wärmekapazität von Stoffen](../spezifische_Waermekapazität_von_Stoffen.png)
MD

cat > "$DOCS/wp/betrieb.md" << 'MD'
# Betrieb & Regelung

## SG-Ready

Binäres Zweidraht-System mit **4 Zuständen:**

| Zustand | Beschreibung |
|---------|-------------|
| **0:0** | Nicht heizen / Sperrung (z.B. Heizstrom-Sperrzeiten) |
| **0:1** | Normalbetrieb mit Pufferproduktion |
| **1:0** | Erhöhter Normalbetrieb – Einschaltempfehlung (WP entscheidet) |
| **1:1** | Anlaufbefehl mit vorher hinterlegten Parametern (höhere VL-Temp.) |

!!! info "Vorteil der Einschaltempfehlung"
    WP-Steuerung hat das letzte Wort – schaltet nicht ein wenn Speicher voll.

## Heizkurve

$$S = \frac{\Delta T_{VL}}{\Delta T_{AT}} \quad \text{(Steilheit)}$$

## Heizgrenze

| Dämmqualität | Heizgrenze |
|-------------|-----------|
| Schlechte Wärmedämmung | +15°C Aussentemperatur |
| Gute Wärmedämmung | +12°C Aussentemperatur |
MD

# ============================================================
# HEIZUNG
# ============================================================
cat > "$DOCS/heizung/index.md" << 'MD'
# 🏠 Heizung & Hydraulik

## Wärmelehre Grundlagen

| Grösse | Formel | Einheit |
|--------|--------|---------|
| Wärmeenergie | $Q = m \cdot c \cdot \Delta\theta$ | kJ |
| Wärmeleistung | $\Phi = Q / t = \dot{m} \cdot c \cdot \Delta T$ | kW |
| Spez. Wärmekapazität Wasser | $c = 4.187$ | kJ/(kg·K) |
| Schmelzenthalpie | $s = 332$ | kJ/kg |
| Verdampfungsenthalpie | $r = 2256$ | kJ/kg |

**Einheiten:**
- 1 J = 1 Ws &nbsp;|&nbsp; 1 MJ = 10⁶ J &nbsp;|&nbsp; 1 kWh = 3.6 MJ
MD

cat > "$DOCS/heizung/heizlast.md" << 'MD'
# Heizlast & Dimensionierung

## Neubau (SIA 384.201)

$$\Phi_{HL} = KW \cdot EBF$$

![Kontrollwerte](../Kontrollwerte.png)

| Gebäudetyp | Spez. Heizleistung [W/m²] |
|-----------|--------------------------|
| Herkömmlich gedämmt | 50–70 |
| Gut gedämmt bestehend | 40–50 |
| Neubau nach Vorschriften | 30–40 |
| Dienstleistungsbau | 60–80 |

## Sanierung (aus Brennstoffverbrauch)

$$\Phi_{HL} = \frac{B_a \cdot H_s \cdot \eta}{t_{voll}}$$

| Variable | Bedeutung |
|----------|-----------|
| $B_a$ | Brennstoff- oder Stromverbrauch alte Heizung |
| $H_s$ | Brennwert |
| $\eta$ | Jahresnutzungsgrad |
| $t_{voll}$ | Vollaststunden |

![Vollaststunden](../Vollaststunden.png)

## Jährlicher Energiebedarf

$$E = \frac{\Phi_{HL}}{28} \cdot 16 \cdot HGT$$

## Wärmedurchgang

$$\dot{Q} = U \cdot A \cdot (T_i - T_e)$$

$$U = \frac{1}{\frac{1}{h_i} + \sum\frac{d_n}{\lambda_n} + \frac{1}{h_e}} \quad [W/(m^2 K)]$$

- $R_{si} = 1/h_i = 0.125\,m^2K/W$ (innen)
- $R_{se} = 1/h_e = 0.04\,m^2K/W$ (aussen)

## Brennwert

![Brennwert](../Brennwert.png)

![Energieinhalte Wirkungsgrad](../Energieinhalte_Wirkungsgrad.png)
MD

cat > "$DOCS/heizung/druckverlust.md" << 'MD'
# Druckverlust & Hydraulik

## Massenstrom

$$\dot{m} = \frac{\Phi \cdot 3600}{c \cdot \Delta T} \quad [kg/h]$$

## Druckverlust

$$\Delta p = \sum(R \cdot l + Z) \quad [Pa]$$

Richtwert Vordimensionierung: **50 Pa/m**

![Reibungsverlust](../Reibungsverlust.jpeg)

## Rohrdurchmesser

| Gewinderohr | DN | Ø [mm] | Max. [l/s] |
|-------------|-----|--------|-----------|
| 1/2" | DN 15 | 21.3 | 0.83 |
| 3/4" | DN 20 | 26.9 | 1.33 |
| 1" | DN 25 | 33.7 | 2.50 |
| 1 1/4" | DN 32 | 42.4 | 3.83 |
| 1 1/2" | DN 40 | 48.3 | 5.00 |
| 2" | DN 50 | 60.3 | 8.33 |
| 2 1/2" | DN 65 | 76.1 | 13.33 |

## Hydraulische Schaltungen

![Hydraulische Schaltungen 1](../Hidraulische_Schaltungen_1.png)

![Hydraulische Schaltungen 2](../Hidraulische_Schaltungen_2.png)

## Längenänderung (Wärmeausdehnung)

$$\Delta l = l_0 \cdot \alpha \cdot \Delta\vartheta$$

$$l_t = l_0 \cdot (1 + \alpha \cdot \Delta\vartheta)$$

![Ausdehnung 1](../Ausdehnung1.jpeg)

![Ausdehnung 2](../Ausdehnung2.jpeg)
MD

cat > "$DOCS/heizung/expansion.md" << 'MD'
# Expansionsgefäss Heizung

## Dimensionierung

$$V_N = V_A \cdot f \cdot x$$

![Thermischer Ausdehnungsfaktor](../Thermische_Ausdehnungsfaktor.png)

## Vordruck

$$p_v = \frac{h_p\,[\text{m}]}{10} + 0.3\,\text{bar} \quad \text{(10 mWs = 1 bar)}$$

## Volumenänderung Wasser

$$\Delta V = m \cdot (v_2 - v_1)$$

Dichteanomalie: Bei **4°C** hat Wasser die grösste Dichte (1 kg/dm³)

![Ausdehnung Wasser](../AusdehnungWasser.png)

## Heizungswasser Anforderungen

- pH-Wert: **8.3–9.5** (bei Aluminium pH < 8.5)
- Härte: < 0.1 mol/m³ / < 1°fH / 0.56°dH
- Keine freien Gase
MD

cat > "$DOCS/heizung/warmwasser.md" << 'MD'
# Warmwasser (BWW)

## Speichervolumen

$$V_{SP} = V_B + V_v + V_{LA} + V_Z + V_{KW}$$

| Anteil | Beschreibung | Richtwert |
|--------|-------------|-----------|
| $V_B$ | Warmwasserbedarf | gem. Tabelle (Personen/Komfort) |
| $V_v$ | Wärmeverlust | ≤200 l: 15% / ≤500 l: 8% / ≤1000 l: 6% |
| $V_{LA}$ | Ausstossverlust | EFH: 20%, MFH: 10–15% |
| $V_Z$ | Misch-/Kaltwasserzone | ~10–20% von $V_B$ |

!!! warning "Energiegesetz"
    Reine **Elektro-Speicherwassererwärmer** in ganzjährig bewohnten Wohnbauten **nicht mehr zugelassen**.

## Mischgesetz

$$T_m = \frac{m_1 \cdot c_1 \cdot T_1 + m_2 \cdot c_2 \cdot T_2}{m_1 \cdot c_1 + m_2 \cdot c_2}$$

$$m_1 = \frac{m_2 \cdot (T_2 - T_m)}{T_m - T_1}$$

![Mischkreuz](../mischkeuz.png)

![BWW Speicher](../BWWSpeicher.jpeg)

![Solar Warmwasser](../SolarWarmwasser.png)
MD

# ============================================================
# NORMEN
# ============================================================
cat > "$DOCS/normen/index.md" << 'MD'
# 📋 Normen & Vorschriften

## Hierarchie

| Art | Verbindlichkeit | Beispiele |
|-----|----------------|---------|
| **Gesetze / Verordnungen** | Einzuhalten | Energiegesetz, NIV, NIN |
| **Normen** | Handlungsempfehlung | SIA 384.201, ElectroSuisse NIN |
| **Standards** | Freiwillig | Minergie, GEAK |

## GEAK

- Bewertungsskala **A–G** (Energieeffizienz Gebäudehülle)
- Von GEAK-Experten bewertet
- GEAK plus: Beratungsbericht mit bis zu 3 Modernisierungsvarianten
- [www.geak.ch](https://www.geak.ch)

## Minergie

Freiwilliger Baustandard: **Minergie < Minergie-P < Minergie-A**

Ziele: Wohnqualität, Werterhalt, geringere Heizkosten, weniger CO₂

## Gebäudeprogramm

- [portal.dasgebaeudeprogramm.ch](https://portal.dasgebaeudeprogramm.ch)
- Kantonale Förderprogramme für Heizung, Gebäude, PV
MD

cat > "$DOCS/normen/energiestrategie.md" << 'MD'
# Energiestrategie 2050

## Klimazahlen Schweiz

| Kenngrösse | Wert |
|-----------|------|
| CO₂ aktuell | 427 ppm (vorindustriell: 280 ppm) |
| Schweiz Erwärmung | +2.8°C über vorindustriellem Niveau |
| Global 2025 | +1.2–1.3°C |
| CO₂ Schweiz | 13 t/Kopf (Inland + Importe) |
| Planetare Belastungsgrenze | 0.6 t/Kopf |

## CO₂ Emissionen Schweiz

- 33% Verkehr (ohne int. Flüge)
- 23% Gebäude
- 23% Industrie
- 21% Landwirtschaft, Abfall, Gase

## Ziele Energiestrategie 2050

| Ziel | Wert |
|------|------|
| Netto-Null | 2050 |
| Halbierung vs. 1990 | 2030 |
| Verbrauchssenkung bis 2035 | –43% pro Person |
| Verbrauchssenkung bis 2050 | –53% pro Person |
| EE ohne Wasserkraft 2035 | mind. 35 TWh |
| EE ohne Wasserkraft 2050 | mind. 45 TWh |
| Solaranlage Pflicht ab | 300 m² Gebäudefläche |

## Kipppunkte

- Arktischer Eisschild: weniger Eis → weniger Reflexion → mehr Erwärmung
- Permafrostboden: Auftauen → riesige CO₂-Freisetzung
- Irreversibel sobald Kipppunkt erreicht
MD

cat > "$DOCS/normen/abkuerzungen.md" << 'MD'
# Abkürzungen

| Kürzel | Bedeutung |
|--------|-----------|
| AC | Wechselstrom (Alternating Current) |
| DC | Gleichstrom (Direct Current) |
| EFH | Einfamilienhaus |
| MFH | Mehrfamilienhaus |
| EnFV | Energieförderverordnung |
| ESTI | Eidgenössisches Starkstrominspektorat |
| EVU | Energieversorgungsunternehmen |
| GAK | Generator-Anschlusskasten |
| GEAK | Gebäudeenergieausweis der Kantone |
| GWP | Global Warming Potential |
| HAK | Hausanschlusskasten |
| HGT | Heizgradtage |
| HV | Hauptverteilung |
| IEC | International Electrotechnical Commission |
| JAZ | Jahresarbeitszahl |
| KLEIV | Einmalvergütung < 100 kW |
| GREIV | Einmalvergütung > 100 kW |
| LEG | Lokale Elektrizitätsgemeinschaft |
| MPP | Maximal-Leistungspunkt |
| MuKE | Mustervorschriften der Kantone im Energiebereich |
| NA-Schutz | Netz- und Anlagenschutz |
| NIN | Niederspannungs-Installations-Norm |
| NIV | Niederspannungs-Installations-Verordnung |
| NIV Art.7 | Bewilligung natürliche Personen |
| NIV Art.9 | Bewilligung Betriebe |
| NIV-14 | Installation spez. elektr. Anlagen (u.a. PV) |
| NOCT | Normal Operating Cell Temperature |
| ODP | Ozon-Abbau-Potential |
| Pronovo | Förderabwicklung Strom aus EE |
| PV | Photovoltaik |
| RE | Rundsteuerempfänger |
| SENS | Stiftung für Recycling elektr. Geräte |
| SG-Ready | Smart Grid Schnittstelle Wärmepumpe |
| SIA | Schw. Ingenieur- und Architektenverein |
| SiNa | Sicherheitsnachweis |
| STC | Standard Test Conditions (25°C, 1000 W/m², AM1.5) |
| TAG | Technisches Anschluss Gesuch |
| ÜA | Überspannungsableiter |
| UV | Unterverteilung |
| Üu | Überstrom-Unterbrecher |
| VKF | Vereinigung Kantonaler Feuerversicherungen |
| VNB | Verteilnetzbetreiber |
| ZEV | Zusammenschluss zum Eigenverbrauch |
MD

cat > "$DOCS/links.md" << 'MD'
# 🔗 Nützliche Links

## Planung & GIS

| Beschreibung | Link |
|-------------|------|
| Geoportal Schweiz | [geoportal.ch](https://www.geoportal.ch) |
| Sonnendach Schweiz (BFE) | [uvek-gis.admin.ch](https://www.uvek-gis.admin.ch/BFE/sonnendach/) |
| SolarGIS Strahlungsdaten | [solargis.com](https://solargis.com/resources/free-maps-and-gis-data) |
| Heizgradtage Schweiz | [opendata.swiss](https://opendata.swiss/de/dataset/monatliche-heizgradtage-in-der-schweiz-gewichtet/) |
| Heizgradtage Ortschaften | [hev-schweiz.ch](https://www.hev-schweiz.ch/vermieten/nebenkostenabrechnungen/heizgradtage) |
| WP Rechner | [biber.solar](https://biber.solar/heat-pump-calculator/) |

## Förderung & Normen

| Beschreibung | Link |
|-------------|------|
| Pronovo | [pronovo.ch](https://pronovo.ch) |
| Kundenportal Pronovo | [kundenportal.pronovo.ch](https://kundenportal.pronovo.ch) |
| Energiefranken | [energiefranken.ch](https://www.energiefranken.ch/de) |
| Gebäudeprogramm | [dasgebaeudeprogramm.ch](https://portal.dasgebaeudeprogramm.ch) |
| GEAK | [geak.ch](https://www.geak.ch) |
| Energiegesetz | [fedlex.admin.ch](https://www.fedlex.admin.ch/eli/fga/2023/2301/de) |
| BFE WP Dimensionierung | [pubdb.bfe.admin.ch](https://pubdb.bfe.admin.ch/de/publication/download/165) |
| Gaswerte SVGW | [svgw.ch](https://www.svgw.ch/media/9858/g10001_d_werte2022.pdf) |
MD

# ============================================================
# BUILD
# ============================================================
echo ""
echo "Baue MkDocs Site..."
cd "$BASE"
mkdocs build

echo ""
echo "======================================================"
echo "  ✅ Fertig!"
echo ""
echo "  Site gebaut: $BASE/site/"
echo ""
echo "  Nginx aktivieren:"
echo "  sudo cp /etc/nginx/sites-enabled/training.biber.solar /etc/nginx/sites-enabled/"
echo "  sudo nginx -t && sudo systemctl reload nginx"
echo ""
echo "  SSL Zertifikat:"
echo "  sudo certbot --nginx -d training.biber.solar"
echo ""
echo "  Nach Änderungen einfach neu bauen:"
echo "  cd $BASE && mkdocs build"
echo "======================================================"
