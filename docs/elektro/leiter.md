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
