# 1-BOʻLIM  ·  ODDIY ARIFMETIK AMALLAR

> 100 ta vazifa — faqat o‘zgaruvchilar va arifmetik operatorlar (massiv, sikl, shart **yo‘q**). Har vazifa nomer, qiyinlik va to‘liq shart bilan beriladi.

## Kirish
Bu bo‘limda siz quyidagi amallarni mustahkamlaysiz: qo‘shish, ayirish, ko‘paytirish, bo‘lish, qoldiq, foiz va arifmetik ifodalar. Har bir mavzu: 1 namuna + 10 Oson + 7 O‘rta + 3 Qiyin = 21 vazifa. 5 mavzu × ≈20 → 100 vazifa.

---
## 1. Qoʻshish & Ayirish

### 1.1 Oson
**Namuna masala (A1-01 [Oson]) — Ikki son yigʻindisi**  
_Ikkita butun_ `a`, `b` berilgan. Natijada `a + b` ni ekranga chiqaring.

```dart
void main() {
  int a = 5;
  int b = 7;
  print(a + b); // 12
}
```

**Mashq uchun masalalar**
1. A1-02 [Oson] — Ikkita butun son `a` va `b` berilgan. Ularning ayirmasini hisoblab, natijani ekranga chiqaring.  
2. A1-03 [Oson] — Uchta butun son `a`, `b`, `c` berilgan. Ularning yigʻindisini chiqarish talab qilinadi.  
3. A1-04 [Oson] — Ikki xonali butun son `n` berilgan. Uning o‘nlik va birlik raqamlar yigʻindisini toping.  
4. A1-05 [Oson] — Birinchi va ikkinchi kun daromadlari `d1` va `d2` berilgan. Jami daromadni hisoblang.  
5. A1-06 [Oson] — Haroratning ikkita o‘lchovi `T1` va `T2` (°C) berilgan. Ularning farqini topib ekranga chiqaring.  
6. A1-07 [Oson] — Juft son `x` va toq son `y` berilgan. Ularning yigʻindisini ekranga chiqaring.  
7. A1-08 [Oson] — Haftaning 7 kuni uchun kiritilgan miqdorlar `d1 … d7` berilgan. Umumiy jamgʻarmani hisoblang.  
8. A1-09 [Oson] — Butun son `n` berilgan. Uni 1 ga oshirib natijani chiqaring.  
9. A1-10 [Oson] — Ikkita haqiqiy son `a` va `b` berilgan. Ularning o‘rta arifmetigini hisoblang.  
10. A1-11 [Oson] — Harorat `F` (Farengeyt) berilgan. Selsiy qiymatini toping (_C = (F − 32)·5/9_ formuladan foydalaning).

### 1.2 O‘rta
**Namuna masala (A1-12 [O‘rta]) — 1 dan 100 gacha yigʻindi**  
Formula _n(n+1)/2_ yordamida natijani hisoblang.

```dart
void main() {
  int n = 100;
  int sum = n * (n + 1) ~/ 2;
  print(sum); // 5050
}
```

**Mashq uchun masalalar**
1. A1-13 [O‘rta] — Uchta butun son `a`, `b`, `c` berilgan. Ularning kvadratlari yigʻindisini hisoblang.  
2. A1-14 [O‘rta] — Besh mahsulot narxlari `p1 … p5` berilgan. Jami sarf qilingan pulni hisoblab chiqaring.  
3. A1-15 [O‘rta] — Ikki ketma-ket Fibonači sonlari `Fₙ` va `Fₙ₋₁` berilgan. Ularning yigʻindisini toping.  
4. A1-16 [O‘rta] — A toʻplamidagi `a1, a2, a3` va B toʻplamidagi `b1, b2, b3` sonlari berilgan. Ikkala toʻplam yigʻindilari ayirmasini (ΣA − ΣB) hisoblang.  
5. A1-17 [O‘rta] — Ikkita katta son (`x` va `y`) har biri 10¹² ga teng. Ularning yigʻindisini toping.  
6. A1-18 [O‘rta] — `a`, `b` va musbat `m` sonlari berilgan. `a + b` ni `m` ga bo‘lgandagi qoldiqni chiqaring.  
7. A1-19 [O‘rta] — Haftaning 7 kuni daromadlari `d1 … d7` berilgan. Umumiy daromad va o‘rta qiymatni alohida satrlarda chiqaring.

### 1.3 Qiyin
**Namuna masala (A1-20 [Qiyin]) — Rim raqamlarini qo‘shish**  
Masalan `XIV + IX` → `23`.

```dart
// Oddiy map va sum
```

**Mashq uchun masalalar**
1. A1-21 [Qiyin] — Ikki 100-xonali natural son `s1` va `s2` (satr ko‘rinishida) berilgan. Ularning yigʻindisini hisoblab, natijani ekranga chiqaring (BigInt ishlating).  
2. A1-22 [Qiyin] — "7b2c1" kabi shifrli satr berilgan: har bir raqam undan keyin keladigan harf qiymatini bildiradi. Satr bo‘yicha barcha raqamlar yigʻindisini toping (misolda 7+2+1=10).  
3. A1-23 [Qiyin] — `a`, `b`, `c`, `d` butun sonlari berilgan. `(a + b) * c − (a − b) * d` ifodani hisoblang.

---
## 2. Ko‘paytirish, Bo‘lish & Qoldiq

### 2.1 Oson
**Namuna masala (A2-01 [Oson]) — Ikki son ko‘paytmasi**

```dart
void main() {
  int a = 4, b = 6;
  print(a * b); // 24
}
```

**Mashq uchun masalalar**
1. A2-02 [Oson] — Ikkita butun son `a`, `b` (`b ≠ 0`) berilgan. Ularning butun bo‘linmasini ekranga chiqaring.  
2. A2-03 [Oson] — Ikkita butun son `a`, `b` (`b ≠ 0`) berilgan. `a` ni `b` ga bo‘lgandagi qoldiqni hisoblang.  
3. A2-04 [Oson] — Kvadrat tomoni `a` berilgan. Kvadrat yuzini hisoblang.  
4. A2-05 [Oson] — Uchburchak asos `a` va balandlik `h` berilgan. Uchburchak yuzini hisoblang.  
5. A2-06 [Oson] — Butun son `n` berilgan. Uni 10 ga ko‘paytirib natijani chiqaring.  
6. A2-07 [Oson] — Massa `kg` berilgan. Grammga aylantirib natijani chiqaring.  
7. A2-08 [Oson] — Vaqt `h` soat berilgan. Sekundga aylantirib natijani chiqaring.  
8. A2-09 [Oson] — Boshlang‘ich summa `P` va foiz `r` (%) berilgan. Bir davr oxiridagi yangi summani hisoblang.  
9. A2-10 [Oson] — Harorat `C` (Selsiy) berilgan. Farengeyt qiymatini toping (_F = C·9/5 + 32_ yordamida).  
10. A2-11 [Oson] — Harorat `K` (Kelvin) berilgan. Selsiy qiymatini toping (_C = K − 273.15_ formuladan foydalaning).

### 2.2 O‘rta
Namuna masala (A2-12 [O‘rta]) — Kub hajmi (a³)

```dart
print(pow(a,3));
```

Mashq (7 ta): Trapetsiya yuzi, Murakkab foiz, Tezlik s/t, Valyuta USD→UZS, Decibel, Faktorizatsiya, Fraksiya qisqartirish.

### 2.3 Qiyin
Namuna A2-19 — Modular daraja (aᵇ mod m)  (powMod)  
Mashq: Katta qoldiq, Arbitrary precision bo‘lish, Bitwise ko‘paytma.

---
## 3. Foiz va Proportiyalar

### 3.1 Oson
**Namuna masala (A3-01 [Oson]) — Sonning 15 % ini topish**

```dart
print(x * 15 / 100);
```

**Mashq vazifalari**
1. A3-02 — Chegirmadan keyingi narx.  
2. A3-03 — `x` ning `k%` ga oshirilgan qiymati.  
3. A3-04 — `a` ning `b` ga nisbatan foizi.  
4. A3-05 — `p%` va `100−p%` qismlarni chiqarish.  
5. A3-06 — Qizlar ulushi foizi.  
6. A3-07 — Matndagi `a` harfi foizi.  
7. A3-08 — Oddiy foiz foyda.  
8. A3-09 — Soliq qo‘shib umumiy to‘lov.  
9. A3-10 — O‘sish foizi 2 davr.  
10. A3-11 — Sonni `k%` ga kamaytirish.

### 3.2 O‘rta
**Namuna masala (A3-12 [O‘rta]) — 3 yillik murakkab foiz**

**Mashq vazifalari**
1. A3-13 — 5 yildan so‘ng summa.  
2. A3-14 — CPI o‘sishi.  
3. A3-15 — Foiz farqi.  
4. A3-16 — 3 bosqich chegirma.  
5. A3-17 — Chakana narx.  
6. A3-18 — Vaznli o‘rtacha rentabellik.  
7. A3-19 — Inflatsiya 3 yil.

### 3.3 Qiyin
**Namuna masala (A3-20 [Qiyin]) — Nominal → Effektiv**

**Mashq vazifalari**
1. A3-21 — Kredit annuiteti to‘lovi.  
2. A3-22 — Valyuta foydasi %.  
3. A3-23 — Uzluksiz kapitalizatsiya.

---
## 4. Birlik Konversiyalari

### 4.1 Oson
**Namuna masala (A4-01 [Oson]) — C → K**

```dart
double k = c + 273.15;
```

**Mashq vazifalari**
1. A4-02 — km → m.  
2. A4-03 — m → mm.  
3. A4-04 — soat → daqiqa.  
4. A4-05 — daqiqa → sekund.  
5. A4-06 — kg → t.  
6. A4-07 — g → lb.  
7. A4-08 — L → ml.  
8. A4-09 — cm → inch.  
9. A4-10 — gradus → radian.  
10. A4-11 — yil → sekund.

### 4.2 O‘rta
**Namuna masala (A4-12 [O‘rta]) — PSI → Pa**

**Mashq vazifalari**
1. A4-13 — Knot → km/soat.  
2. A4-14 — kcal → J.  
3. A4-15 — m² → ft².  
4. A4-16 — atm → mmHg.  
5. A4-17 — Coulomb → A·s.  
6. A4-18 — hp → kW.  
7. A4-19 — Mb/s → MB/s.

### 4.3 Qiyin
**Namuna masala (A4-20 [Qiyin]) — DMS → Decimal**

**Mashq vazifalari**
1. A4-21 — Yorug‘lik yili → km.  
2. A4-22 — BTU → kWh.  
3. A4-23 — F ↔ K formula.

---
## 5. Aralash Ifodalar

### 5.1 Oson
**Namuna masala (A5-01 [Oson]) — Diskriminant `b²-4ac`**

**Mashq vazifalari**
1. A5-02 — Ikki nuqta masofasi.  
2. A5-03 — Doira sektori yuzi.  
3. A5-04 — Yarim perimetri.  
4. A5-05 — Parallelepiped diagonali.  
5. A5-06 — Elektr quvvat `U·I`.  
6. A5-07 — Ideal gaz.  
7. A5-08 — 2ⁿ hujayra.  
8. A5-09 — C(n,2).  
9. A5-10 — Foizli massasi.  
10. A5-11 — Garmonik o‘rtacha.

### 5.2 O‘rta
**Namuna masala (A5-12 [O‘rta]) — Trapezoid diagonali**

**Mashq vazifalari**
1. A5-13 — Suyuqlik bosimi.  
2. A5-14 — Linza formulasi.  
3. A5-15 — Sinus qoida.  
4. A5-16 — Optik kuch.  
5. A5-17 — Parallelogram yuzi.  
6. A5-18 — Gipotenuza.  
7. A5-19 — Garmonik progressiya hadi.

### 5.3 Qiyin
**Namuna masala (A5-20 [Qiyin]) — Kublar yig‘indisi formulasini isbotlash**

**Mashq vazifalari**
1. A5-21 — Bernoulli tenglama.  
2. A5-22 — Relativistik energiya.  
3. A5-23 — Stirling xatosi (`n=10`).

---
### Boss Challenge A-99 — «Mini Kalkulyator»
Konsolda menyu orqali 6 ta amalni (+, −, ×, ÷, %, mod) bajaruvchi kalkulyator yozing. Shart va sikl **yo‘q**, faqat oddiy if/else va arifmetik amallar.

---
**Ball tizimi**  Oson 1 b  •  O‘rta 3 b  •  Qiyin 5 b
