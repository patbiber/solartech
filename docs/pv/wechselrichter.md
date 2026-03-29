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
