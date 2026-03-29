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
