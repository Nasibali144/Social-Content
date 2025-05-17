# 2-BOʻLIM  ·  SHART OPERATORLARI (IF / ELSE)

## Kirish
Ushbu bo‘limda siz if / else yordamida:
• Sonlarni solishtirish
• Mantiqiy shartlar tuzish
• Tartib va toifalarga ajratish
• Ilk marta mantiqiy operatorlar (`&&`, `||`, `!`) bilan tanishasiz.

Har mavzu: 1 namuna + 10 Oson + 7 O‘rta + 3 Qiyin = 21 vazifa. 5 mavzu = ≈100 vazifa.

---
## 1. Sodda Solishtirish

### 1.1 Oson
**Namuna masala (B1-01 [Oson]) — Son musbatmi?**  
Butun `n` berilgan. Agar `n` musbat bo‘lsa "YES", aks holda "NO" chiqaring.

```dart
void main() {
  int n = -3;
  if (n > 0) {
    print('YES');
  } else {
    print('NO');
  }
}
```

**Mashq uchun masalalar**
1. B1-02 [Oson] — Berilgan son juftmi? Agar juft bo‘lsa "EVEN", aks holda "ODD" chiqaring.  
2. B1-03 [Oson] — `a` va `b` sonlar berilgan. Kattasini ekranga chiqaring.  
3. B1-04 [Oson] — Son nollimmi? Agar 0 bo‘lsa "ZERO", aks holda sonning o‘zini chiqaring.  
4. B1-05 [Oson] — Harorat `T` (°C) berilgan. Agar `T >= 100` bo‘lsa "Boiling", aks holda "OK".  
5. B1-06 [Oson] — Talaba balli `s` (0–100). 60 dan yuqori bo‘lsa "Passed", aks holda "Failed".  
6. B1-07 [Oson] — `x` berilgan. Agar `x` 13 ga teng bo‘lsa "Unlucky", aks holda "Lucky".  
7. B1-08 [Oson] — Ikki son `a`, `b`. Agar ular teng bo‘lsa "Equal", aks holda "Not equal".  
8. B1-09 [Oson] — `y` son 1–999 oralig‘ida bo‘lsa "In range", aks holda "Out".  
9. B1-10 [Oson] — Butun `m`. Musbat, manfiy yoki nol holatini so‘z bilan chiqaring.  
10. B1-11 [Oson] — Belgilar `c1`, `c2` (char). Agar ular bir xil bo‘lsa "Same", aks holda "Diff".

### 1.2 O‘rta
**Namuna masala (B1-12 [O‘rta]) — Uch son ichidan eng kattasi**  
`a`, `b`, `c` berilgan. Eng katta qiymatni ekranga chiqaring.

```dart
int max = a;
if (b > max) max = b;
if (c > max) max = c;
print(max);
```

**Mashq uchun masalalar**
1. B1-13 [O‘rta] — Ikki son orasidagi masofa: `|a-b|` ni if/else orqali aniqlang (abs funksiyasiz).  
2. B1-14 [O‘rta] — Koordinata nuqta `(x,y)` birinchi chorakdamI? Ha bo‘lsa "Q1" aks holda "Other".  
3. B1-15 [O‘rta] — Berilgan yil kabisa yilimi? (4 ga bo‘linadi va 100 ga bo‘linmaydi yoki 400 ga bo‘linadi).  
4. B1-16 [O‘rta] — Uchburchak tomonlari `a,b,c`. Uchburchak mavjudi tekshiring (`a+b>c ...`).  
5. B1-17 [O‘rta] — Son `n` 1–7 bo‘lsa hafta kuni nomini chiqaring (1=Mon …). Aks holda "Error".  
6. B1-18 [O‘rta] — Talaba bahosi (0–100) → harflar A(>=86), B, C, D, F.  
7. B1-19 [O‘rta] — Ikkita son teng bo‘lsa 0, birinchi kichik bo‘lsa -1, katta bo‘lsa 1 ni chiqaring.

### 1.3 Qiyin
**Namuna masala (B1-20 [Qiyin]) — Kreditni tasniflash**  
Summa `S` va oylik to‘lov `M` berilgan. Agar `S/M` > 48 => "Rejected", 36–48 => "Verify", <=35 => "Approved".

```dart
int months = (S / M).ceil();
if (months > 48) print('Rejected');
else if (months >= 36) print('Verify');
else print('Approved');
```

**Mashq uchun masalalar**
1. B1-21 [Qiyin] — Kvadrat tenglama `ax²+bx+c=0` ildizlar sonini aniqlang (D <0,=0,>0).  
2. B1-22 [Qiyin] — Futbol ochkolari (W,D,L) berilgan. Chempionligi uchun 3-1-0 tizimi bo‘yicha "Champion"/"Runner"/"Out" aniqlang (≥90% max, ≥70%).  
3. B1-23 [Qiyin] — GPS tezlik `v` (km/h) va radar cheklovi `L` berilgan. Jarima miqdorini shartli tarif bo‘yicha hisoblang (<=10km/h → 0, <=20 → 50$, boshqalar 100$+...).

---
## 2. Ichma-ich If (Nested)

### 2.1 Oson
**Namuna masala (B2-01 [Oson]) — Son toifalash**  
Butun son `n` berilgan. Nol, musbat yoki manfiyligini tekshiring; musbat yoki manfiy bo‘lsa, yana juft/toq bo‘lib ajrating va tegishli matnni chiqaring (masalan, "POS-EVEN").

```dart
if (n == 0) {
  print('ZERO');
} else {
  bool even = n % 2 == 0;
  if (n > 0) {
    print(even ? 'POS-EVEN' : 'POS-ODD');
  } else {
    print(even ? 'NEG-EVEN' : 'NEG-ODD');
  }
}
```

**Mashq uchun masalalar**
1. B2-02 [Oson] — Ikki son `a`, `b` berilgan. Agar ikkalasi ham musbat bo‘lsa, ularning yig‘indisini; aks holda ayirmasini chiqaring.  
2. B2-03 [Oson] — Son `n` berilgan. Agar `n` 3 ga karrali bo‘lsa, so‘ng `n` 5 ga karrali ekanligini tekshirib mos xabar chiqaring.  
3. B2-04 [Oson] — Son `x` musbat bo‘lsa `x` kvadratini, aks holda absolut qiymatini chiqaring.  
4. B2-05 [Oson] — Tana massasi `m` va boyi `h` (m,sm) berilgan. Agar `h` 150 sm dan qisqa bo‘lsa "Short", so‘ng `m` > 70 bo‘lsa "Heavy" deb yozing (nested label).  
5. B2-06 [Oson] — Uchta son `a`,`b`,`c` berilgan. Agar `a` eng katta bo‘lsa uning va `b` ning yig‘indisini aks holda `c` ni ikki baravarini chiqaring.  
6. B2-07 [Oson] — Sana kuni `d` berilgan. Agar `d` hafta oxiri (6 yoki 7) bo‘lsa "Weekend", aks holda "Weekday".  
7. B2-08 [Oson] — Harorat `t`. Agar `t` < 0 bo‘lsa "Freezing", 0–20 bo‘lsa "Cool", >20 bo‘lsa "Warm".  
8. B2-09 [Oson] — Imtihon balli `s`. Agar `s` ≥ 90 bo‘lsa "A", 80–89 "B", 70–79 "C", aks holda "F".  
9. B2-10 [Oson] — Valyuta kodi ("USD"/"EUR"/"UZS") va summa berilgan. Agar kod "USD" bo‘lsa so‘mga, "EUR" bo‘lsa so‘mga, aks holda o‘zini chiqarish (kurs qiymatlarini faraz qiling).  
10. B2-11 [Oson] — Raqamli baho (1–5) berilgan. 1/2 "Bad", 3 "Average", 4/5 "Good".

### 2.2 O‘rta
**Namuna masala (B2-12 [O‘rta]) — Pasport yoshi**  
Yosh `age` berilgan. Agar `age` 16 dan kichik bo‘lsa "No ID", 16–21 "ID", 22–59 "Passport", ≥60 "Retired".

```dart
String doc;
if (age < 16) doc = 'No ID';
else if (age < 22) doc = 'ID';
else if (age < 60) doc = 'Passport';
else doc = 'Retired';
print(doc);
```

**Mashq uchun masalalar**
1. B2-13 [O‘rta] — Telefon tarifida 0–50 MB bepul, 51–500 MB 1 so‘m/MB, >500 MB 0.5 so‘m/MB. Trafik `mb` berilgan, to‘lovni hisoblang.  
2. B2-14 [O‘rta] — Elektr energiyasi: 0–100 kWh 300 so‘m, 101–300 kWh 400 so‘m, >300 kWh 500 so‘m. Sarf `kwh` berilgan, narxni chiqaring.  
3. B2-15 [O‘rta] — Uchta son ichida faqat bittasi musbat bo‘lsa "One positive", ikkitasi musbat bo‘lsa "Two", uchchala musbat bo‘lsa "Three", aks holda "None".  
4. B2-16 [O‘rta] — Aylana radiusi `r`. Agar `r` < 5 bo‘lsa "Small", 5–10 "Medium", 10–20 "Big", >20 "Huge".  
5. B2-17 [O‘rta] — Talaba GPA (0–4). 3.6+ "High Honours", 3.0+ "Honours", 2.0+ "Pass", aks holda "Fail".  
6. B2-18 [O‘rta] — Sport musobaqasida ball 0–30. 0–10 "Bronze", 11–20 "Silver", 21–30 "Gold" medal.  
7. B2-19 [O‘rta] — Kredit foizi: summa `S` < 10 mln 24%, <50 mln 20%, >=50 mln 18%.

### 2.3 Qiyin
**Namuna masala (B2-20 [Qiyin]) — Sug‘urta mukofoti**  
Yosh `age` va avto klassi (A/B/C) berilgan. Tarif: yosh <25 → bazaga 25% ustama, klass C → +10%; so‘ng chiqaring.

```dart
double premium = base;
if (age < 25) premium *= 1.25;
if (class == 'C') premium *= 1.10;
print(premium);
```

**Mashq uchun masalalar**
1. B2-21 [Qiyin] — Oy nomi va yil berilgan. Fevralleap/28, 30/31 kunni chiqarish.  
2. B2-22 [Qiyin] — To‘lov tizimi: daromad va toifa (student/pensioner) berilgan. Imtiyozlarni inobatga olib soliqni hisoblang.  
3. B2-23 [Qiyin] — Internet abonent narxi: ko‘p bosqichli jadvali bo‘yicha yil yakunida umumiy to‘lov.

---
## 3. Kattalik / Minimum tanlash

### 3.1 Oson
**Namuna masala (B3-01 [Oson]) — Uch sonni tartiblash (kichikdan katta)**  
`a`, `b`, `c` berilgan. Ularni if/else yordamida o‘sish tartibida chop eting.

```dart
if (a > b) {
  int t = a; a = b; b = t;
}
if (b > c) {
  int t = b; b = c; c = t;
  if (a > b) { int t = a; a = b; b = t; }
}
print('$a $b $c');
```

**Mashq uchun masalalar**
1. B3-02 [Oson] — Ikki sonning kichigini chiqaring.  
2. B3-03 [Oson] — To‘rt son berilgan. Eng kattasini toping.  
3. B3-04 [Oson] — Sonlar `x`,`y`. Kattasi juft bo‘lsa "EVEN BIG", aks holda "ODD BIG".  
4. B3-05 [Oson] — Kasr sonlardan eng kichigi va eng kattasini toping.  
5. B3-06 [Oson] — Uchta son ichidan median qiymatni chiqaring.  
6. B3-07 [Oson] — Berilgan son va uning qarama-qarshi sonidan kattasini chiqaring.  
7. B3-08 [Oson] — Ikki raqamli son raqamlaridan eng kattasini chiqaring.  
8. B3-09 [Oson] — Temperatura Selsiy va Farengeyt (C,F) berilgan. Qaysi issiqroq ekanini ko‘rsating.  
9. B3-10 [Oson] — 3 ta float berilgan. `abs` qiymati eng kichik sonni chiqaring.  
10. B3-11 [Oson] — Uchtadan 2 ta eng kattasini yig‘indisini chiqaring.

### 3.2 O‘rta
**Namuna masala (B3-12 [O‘rta]) — Teng eng katta ikki son**  
To‘rt son berilgan. Agar eng katta son takrorlansa, "TIE" deb yozing, aks holda eng kattani.

**Mashq uchun masalalar**
1. B3-13 [O‘rta] — Uchtadan eng katta farqni toping (`max - min`).  
2. B3-14 [O‘rta] — To‘rtta raqam to‘plamini o‘sish tartibida chop eting (if zanjiri).  
3. B3-15 [O‘rta] — Uchta son kvadratlari orasidan eng kichigining ildizini chiqaring.  
4. B3-16 [O‘rta] — Koordinatalar (x1,y1),(x2,y2). Uzoqroq nuqtani aniqlang (0,0 ga).  
5. B3-17 [O‘rta] — To‘rtta student balidan o‘rtachadan yuqori bo‘lgan eng kattasini chiqaring.  
6. B3-18 [O‘rta] — Integral qismi eng kichik bo‘lgan floatni toping.  
7. B3-19 [O‘rta] — 5 ta son berilgan. Ikkinchi eng kichik sonni toping.

### 3.3 Qiyin
**Namuna masala (B3-20 [Qiyin]) — Raqamlarni tartib bilan chiqarish (6 ta)**  
6 ta sondan iborat ketma-ketlikni if/else yordamida tartiblash (massivsiz).

**Mashq uchun masalalar**
1. B3-21 [Qiyin] — 8 ta sonni o‘sish tartibida tartiblab konsolga chiqaring.  
2. B3-22 [Qiyin] — Sonlar ketma-ketligi 1<n<=6, hammasini so‘rilmaydigan tartiblash (selection sort) if bazasida.  
3. B3-23 [Qiyin] — 3 ta nuqta orqali to‘g‘ri burchakli uchburchak mavjudligini tekshirib, katetlar uzunliklarini kamayish tartibida chiqaring.

---
## 4. Oralig‘ va Toifalash

### 4.1 Oson
**Namuna masala (B4-01 [Oson]) — Oy raqamini faslga o‘girish**  
Oy (1–12) berilgan. Qaysi faslga tegishli ekanini ekranga chiqaring.

```dart
if (m==12 || m<=2) print('Qish');
else if (m<=5) print('Bahor');
else if (m<=8) print('Yoz');
else print('Kuz');
```

**Mashq uchun masalalar**
1. B4-02 [Oson] — Kun raqami (1–7) → hafta kuni nomi.  
2. B4-03 [Oson] — Umur `age` 0–12 "Child", 13–17 "Teen", 18+ "Adult".  
3. B4-04 [Oson] — Soat (0–23). 6–11 "Morning", 12–17 "Day", 18–21 "Evening", 22–5 "Night".  
4. B4-05 [Oson] — Bal 0–100 dan 10 ballik tizimga o‘tkazish (>=90 → 9–10 ...).  
5. B4-06 [Oson] — Valyuta summasi: <100 "Kichik", 100–1000 "O‘rtacha", >1000 "Katta".  
6. B4-07 [Oson] — Tezlik km/h: <20 "Yurish", <60 "Shahar", <90 "Shosse", >=90 "Tezyurar".  
7. B4-08 [Oson] — Harorat C: <0 "Sovuq", 0–20 "Iliq", >20 "Issiq".  
8. B4-09 [Oson] — BMI indeks: <18.5 "Under", 18.5–24.9 "Normal", 25–29.9 "Over", >=30 "Obese".  
9. B4-10 [Oson] — Yil daromadi (mln so‘m): <20 "Low", 20–100 "Middle", >100 "High".  
10. B4-11 [Oson] — Kredit skori: <500 "Bad", 500–700 "Fair", 701–850 "Good".

### 4.2 O‘rta
**Namuna masala (B4-12 [O‘rta]) — Rang kodini nomga aylantirish**  
RGB (0–255) bo‘yicha, agar faqat bitta kanal >200 bo‘lsa, qaysi rang ustunligini (Red/Green/Blue) chiqaring, aks holda "Mixed".

**Mashq uchun masalalar**
1. B4-13 [O‘rta] — Uchburchak burchagi (deg) → tur (Acute/Right/Obtuse).  
2. B4-14 [O‘rta] — Son `n` 1–365 → yil kuni bo‘yicha faslni chiqaring.  
3. B4-15 [O‘rta] — Xizmat staji (yil): <1 "Intern", <3 "Junior", <6 "Middle", >=6 "Senior".  
4. B4-16 [O‘rta] — Telefon signal kuchi dBm: -30 yuqori, -67 yaxshi, -90 zaif, past "No signal".  
5. B4-17 [O‘rta] — CPU harorati °C: <70 normal, 70–85 warning, >85 critical.  
6. B4-18 [O‘rta] — Kredit reyt.  
7. B4-19 [O‘rta] — Project status: progress % ga ko‘ra label (Not started/In progress/Almost done/Done).

### 4.3 Qiyin
**Namuna masala (B4-20 [Qiyin]) — Soliq stavkasi darajalari**  
Daromad bo‘yicha progressiv stavkalar 0–10%, 10–20%, >20%. Stavkalarga asosan yig‘imni hisoblang.

**Mashq uchun masalalar**
1. B4-21 [Qiyin] — AQSh federal soliq ko‘p bosqichli hisobi.  
2. B4-22 [Qiyin] — Mobil trafik billing: ko‘p bosqichli jadval.  
3. B4-23 [Qiyin] — Elektr tarif: kun/tun stavkalari + sarf diapazonlari bilan.

---
## 5. Mantiqiy Ifodalar va Kombinatsiyalar

### 5.1 Oson
**Namuna masala (B5-01 [Oson]) — Uchburchak turi**  
Tomonlari `a`,`b`,`c` berilgan. Agar teng tomonli bo‘lsa "Equilateral", teng yonli bo‘lsa "Isosceles", aks holda "Scalene".

```dart
if (a==b && b==c) print('Equilateral');
else if (a==b || b==c || a==c) print('Isosceles');
else print('Scalene');
```

**Mashq uchun masalalar**
1. B5-02 [Oson] — Son `n` 2 ga ham 3 ga ham karrali bo‘lsa "Yes" aks holda "No".  
2. B5-03 [Oson] — `x` 1–100 oralig‘ida va juft bo‘lsa "EvenInRange".  
3. B5-04 [Oson] — Belgilar `c1`,`c2`. Ikkalasi ham unli bo‘lsa "Vowel", aks holda "Consonant".  
4. B5-05 [Oson] — Son `n` 5 ga karrali yoki oxiri 5 bo‘lsa "Five".  
5. B5-06 [Oson] — Raqam `d` 0–9 va toq ham (>5) bo‘lsa "High odd", aks holda "Other".  
6. B5-07 [Oson] — Yil kabisa yilmi va toq yilmi? Ha bo‘lsa "Odd leap", kabi.  
7. B5-08 [Oson] — Ikki shart: parol uzunligi ≥8 va raqam o‘z ichiga oladi. "Strong"/"Weak".  
8. B5-09 [Oson] — Xarid summasi <100 yoki karta mavjudligi bo‘lsa 5% chegirma.  
9. B5-10 [Oson] — Temperatura <0 yoki >35 bo‘lsa "Alert".  
10. B5-11 [Oson] — Kompyuter yoshi >3 yil **va** RAM <8GB bo‘lsa "Upgrade".

### 5.2 O‘rta
**Namuna masala (B5-12 [O‘rta]) — To‘g‘ri burchakli uchburchak**  
Tomonlar `a`,`b`,`c` berilgan. Pifagor sharti yordamida uchburchak to‘g‘ri burchaklimi aniqlang.

**Mashq uchun masalalar**
1. B5-13 [O‘rta] — Ishga qabul: tajriba ≥3 yil **va** IELTS≥6.5 yoki GitHub profili bo‘lsa "Interview".  
2. B5-14 [O‘rta] — Son `n` 2 ga **ham** 3 ga **ham** 5 ga karrali bo‘lishini tekshiring.  
3. B5-15 [O‘rta] — Student o‘qishga qabul: ball ≥150 **va** (mat ≥50 **va** fiz ≥40).  
4. B5-16 [O‘rta] — Avto sug‘urta chegirmasi: yosh ≥25 **va** avariyasiz 5 yil **yoki** avto 'A' klass.  
5. B5-17 [O‘rta] — Harorat va namlik: `t` >30 **va** `h` >60 → "Sticky".  
6. B5-18 [O‘rta] — Chiptalar paketi: (>=5 bilet **yoki** VIP) **va** chegirma kodi bo‘lsa 20% off.  
7. B5-19 [O‘rta] — Kredit limiti: daromad ≥ min **va** skor ≥700 **va** qarz/yillik <0.3.

### 5.3 Qiyin
**Namuna masala (B5-20 [Qiyin]) — Kengaytirilgan parol siyosati**  
Parol uzunligi ≥12, kamida 1 katta, 1 kichik, 1 raqam, 1 maxsus belgi.

**Mashq uchun masalalar**
1. B5-21 [Qiyin] — Internet xavfsizlik: foydalanuvchi IP lokal subnetda **va** 2FA yoqilmagan **yoki** 5 ta noto‘g‘ri urinish → blok.  
2. B5-22 [Qiyin] — Sog‘liq monitoring: yurak urishi >100 **va** (SPO2 <92 **yoki** bosim >140/90) → "Emergency".  
3. B5-23 [Qiyin] — O‘yin darajasi: XP ≥5000 **va** (rare item **yoki** all missions done) → "Elite".

---
### Boss Challenge B-99 — "Soliqqa Tayyorlovchi"
