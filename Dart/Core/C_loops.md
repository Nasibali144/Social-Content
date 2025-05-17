# 3-BOʻLIM  ·  SIKLLAR (LOOPS)

## Kirish
Bu bo‘limda siz takror amalga oshirishni o‘rganasiz: sanash, yig‘ish, ko‘paytirish, naqsh chizish va turli ketma-ketliklar. Har mavzu: 1 namuna + 10 Oson + 7 O‘rta + 3 Qiyin ≈ 21 vazifa. 5 mavzu → ≈100 vazifa.

---
## 1. Takroriy Sanash (Counting)

### 1.1 Oson
**Namuna masala (C1-01 [Oson]) — 1 dan n gacha yig‘indi**  
Butun `n` berilgan (`n ≥ 1`). 1 … `n` sonlar yig‘indisini chiqaring.

```dart
int sum = 0;
for (int i = 1; i <= n; i++) {
  sum += i;
}
print(sum);
```

**Mashq uchun masalalar**
1. C1-02 [Oson] — 1 dan `n` gacha barcha sonlarni bir qatorda chop eting.  
2. C1-03 [Oson] — `n` dan 1 gacha teskari tartibda chiqarish.  
3. C1-04 [Oson] — 1 … `n` orasidagi juft sonlarni chiqarish.  
4. C1-05 [Oson] — 1 … `n` juft sonlar yig‘indisini hisoblang.  
5. C1-06 [Oson] — 1 … `n` natural sonlar ko‘paytmasi (factorial) ni toping.  
6. C1-07 [Oson] — `m` sonining ko‘paytirish jadvalini (1–10) chiqaring.  
7. C1-08 [Oson] — 1 … `n` sonlar kvadratlari yig‘indisini toping.  
8. C1-09 [Oson] — `n` sonining bo‘luvchilar sonini sanang.  
9. C1-10 [Oson] — `n` sonidagi raqamlar sonini hisoblang.  
10. C1-11 [Oson] — `a` va ixtiyoriy musbat butun `k` berilgan. `a`-ni `k`-darajaga ko‘tarib natijani chiqarish (ko‘paytirish sikli bilan).

### 1.2 O‘rta
**Namuna masala (C1-12 [O‘rta]) — Fibonacci ketma-ketligi**  
`n` berilgan. F1=1,F2=1 dan boshlab `n`-ta Fibonachi sonini chiqarish.

```dart
int f1 = 1, f2 = 1;
print('$f1 $f2');
for (int i = 3; i <= n; i++) {
  int f = f1 + f2;
  print(f);
  f1 = f2; f2 = f;
}
```

**Mashq uchun masalalar**
1. C1-13 [O‘rta] — `n` sonining eng katta bo‘luvchisi (GCD) ni iteratsiya bilan toping (`n` va `m` beriladi).  
2. C1-14 [O‘rta] — `n`-chi Fibonachi sonini chiqarish (faqat oxirgi qiymat).  
3. C1-15 [O‘rta] — 2^k ≥ `n` bo‘ladigan eng kichik `k` ni toping.  
4. C1-16 [O‘rta] — `n` natural son bo‘luvchilarining yig‘indisini toping.  
5. C1-17 [O‘rta] — Tub son ekanligini tekshiring (oddiy bo‘luvchi qidirish).  
6. C1-18 [O‘rta] — 1 … `n` oralig‘idagi tub sonlar sonini sanang.  
7. C1-19 [O‘rta] — 1 … `n` oralig‘ida raqamlari yig‘indisi 10 ga teng bo‘lgan sonlarni chiqaring.

### 1.3 Qiyin
**Namuna masala (C1-20 [Qiyin]) — Minimal k talab qilinadigan yig‘indi**  
Eng kichik `k` ni toping, shunda 1+2+…+`k` ≥ `n`.

```dart
int s = 0, k = 0;
while (s < n) {
  k++;
  s += k;
}
print(k);
```

**Mashq uchun masalalar**
1. C1-21 [Qiyin] — Binom koeffitsientlari: `n` va `k` berilganda C(n,k) ni sikl orqali hisoblang (ular massivsiz).  
2. C1-22 [Qiyin] — 1 … `n` oralig‘ida eng ko‘p bo‘luvchiga ega sonni toping (bir nechta bo‘lsa kichigini).  
3. C1-23 [Qiyin] — Saralashsiz 10 ta kiritilgan sonni o‘sish tartibida chiqaring (faqat sikl va if yordamida).

---
## 2. While & Raqam Operatsiyalari

### 2.1 Oson
**Namuna masala (C2-01 [Oson]) — Raqamlar yig‘indisi**  
`n` berilgan. Uning raqamlari yig‘indisini while sikli yordamida hisoblang.

```dart
int sum = 0;
int x = n;
while (x != 0) {
  sum += x % 10;
  x ~/= 10;
}
print(sum);
```

**Mashq uchun masalalar**
1. C2-02 [Oson] — `n` raqamlarini teskari tartibda chop eting.  
2. C2-03 [Oson] — `n` sonida nechta 0 raqami borligini sanang.  
3. C2-04 [Oson] — `n` sonining oxirgi raqamini o‘chirib yangi sonni chiqaring.  
4. C2-05 [Oson] — `n` raqamlar orasidagi maksimum raqamni toping.  
5. C2-06 [Oson] — `n` raqamlar ko‘paytmasini hisoblang.  
6. C2-07 [Oson] — `n` raqamlarini chapdan o‘ngga chiqaring (oldin revers).  
7. C2-08 [Oson] — Palindrom sonmi?  
8. C2-09 [Oson] — `n` sonidagi toq raqamlar yig‘indisini toping.  
9. C2-10 [Oson] — `n` sonidagi raqamlar orasida 5 raqami mavjudligini aniqlang.  
10. C2-11 [Oson] — `n` sonining raqamlarini tartiblangan holda kamayish tartibida chiqaring (swap holda).

### 2.2 O‘rta
**Namuna masala (C2-12 [O‘rta]) — Raqamlarni kvadratga ko‘tarilgan yangi son**  
`n` berilgan. Har bir raqamni kvadratga ko‘tarib hosil bo‘lgan yangi sonni chiqaring (masalan, 23 → 49).

**Mashq uchun masalalar**
1. C2-13 [O‘rta] — `n` sonining raqamlari o‘sish tartibida bo‘lsa "YES" aks holda "NO".  
2. C2-14 [O‘rta] — `n` sonidagi raqamlar orasida ketma-ket toq juft raqamlar jufti mavjudligini aniqlang.  
3. C2-15 [O‘rta] — `n` raqamlari yig‘indisi va ko‘paytmasi farqini chiqaring.  
4. C2-16 [O‘rta] — `n` sonini ikkilik (binary) ko‘rinishda chiqarish.  
5. C2-17 [O‘rta] — `n` uchun raqamlar o‘zgarmaguncha raqamlar yig‘indisi hisoblash (digit root).  
6. C2-18 [O‘rta] — `n` sonini raqamlari bo‘yicha saralanib hosil bo‘lgan eng katta sonni toping.  
7. C2-19 [O‘rta] — `n` sonida ketma-ket uchta bir xil raqam borligini tekshiring.

### 2.3 Qiyin
**Namuna masala (C2-20 [Qiyin]) — Raqamlar bo‘yicha tublik**  
Son `n` ning barcha qo‘shni raqam juftliklari tub bo‘lsa "YES".

**Mashq uchun masalalar**
1. C2-21 [Qiyin] — `n` sonini faqat sikl va if yordamida kasrga aylantirmay 2-likka, so‘ng dan 10likka qaytarib tekshirish.  
2. C2-22 [Qiyin] — `n` sonidan raqamlari dilishda maksimal palindrom hosil qiling.  
3. C2-23 [Qiyin] — 1 … `n` oralig‘idagi palindrom va tub sonlar yig‘indisini toping.

---
## 3. Ichma-ich For (Patternlar)

### 3.1 Oson
**Namuna masala (C3-01 [Oson]) — Kvadrat yulduz**  
`n` berilgan. `n × n` o‘lchamda yulduzchalar to‘liq kvadratini chop eting.

```dart
for (int i = 0; i < n; i++) {
  String row = '';
  for (int j = 0; j < n; j++) {
    row += '*';
  }
  print(row);
}
```

**Mashq uchun masalalar**
1. C3-02 [Oson] — `n` satrdan iborat o‘suvchi uchburchak (1,2,3…) yulduz.  
2. C3-03 [Oson] — Teskari uchburchak (n, n-1 … 1).  
3. C3-04 [Oson] — Bo‘sh kvadrat: chegaralar `*`, ichida bo‘sh joy.  
4. C3-05 [Oson] — Egrilik¸`/` va `\` dan iborat X marrasi.  
5. C3-06 [Oson] — Satrlarda 12345 raqamli uchburchak.  
6. C3-07 [Oson] — Foydalanuvchi belgisi `ch` va n → romb shakli yarimlari (odd n).  
7. C3-08 [Oson] — Shaxmat taxtasi 8×8 (# va space).  
8. C3-09 [Oson] — 1 … n butun sonlar kvadrat matritsada (spiral talab qilinmaydi).  
9. C3-10 [Oson] — Pascal uchburchagining birinchi `n` qatori.  
10. C3-11 [Oson] — Tartibsiz na'muna: diag `*` bo‘yicha 0 va 1 lar matritsa.

### 3.2 O‘rta
**Namuna masala (C3-12 [O‘rta]) — Raqamli to‘g‘ri burchakli uchburchak**  
Har satrda ketma-ket to‘plovchi raqamlar bilan uchburchak.

**Mashq uchun masalalar**  (7 ta)
1. C3-13 [O‘rta] — X romb belgilar.  
2. C3-14 [O‘rta] — Spiral kvadrat 1 … n².  
3. C3-15 [O‘rta] — Shaxmat koordinatalarini har satrda chiqarish.  
4. C3-16 [O‘rta] — Tartibli sonlar matritsasi diagonal bo‘yicha.  
5. C3-17 [O‘rta] — "Hourglass" naqshi `*`.  
6. C3-18 [O‘rta] — Har satrda Fibonachi sonlari bilan uchburchak.  
7. C3-19 [O‘rta] — 0/1 naqshi: har satr juft bo‘lsa 0lardan, toq bo‘lsa 1lardan iborat.

### 3.3 Qiyin
**Namuna masala (C3-20 [Qiyin]) — Spiral matritsa**  
`n` berilgan (`n` ≤ 9). 1 … `n²` sonlarni soat strelkasi bo‘yicha spiralga joylashtirib chop eting.

**Mashq uchun masalalar**
1. C3-21 [Qiyin] — Latin kvadrat (n≤5) generatsiyasi.  
2. C3-22 [Qiyin] — Magic square (n odd, ≤5) tekshirish.  
3. C3-23 [Qiyin] — Fraktal "Sierpinski triangle" ASCII.

---
## 4. Yig‘indilar va Ko‘paytmalar

### 4.1 Oson
**Namuna masala (C4-01 [Oson]) — Geometrik progressiya yig‘indisi**  
`a`, `r`, `n` berilgan. Birinchi `n` hadi yig‘indisini chiqaring (massivsiz, sikl bilan).

```dart
double sum = 0, term = a;
for (int i = 0; i < n; i++) {
  sum += term;
  term *= r;
}
print(sum);
```

**Mashq uchun masalalar**
1. C4-02 [Oson] — 1 … `n` sonlar ko‘paytmalarining oxirgi raqamini toping.  
2. C4-03 [Oson] — `n` ta son kiritiladi. Ularning o‘rtacha qiymatini hisoblang (massivsiz o‘qish).  
3. C4-04 [Oson] — 1 … `n` sonlar orasida 3 ga karralilar yig‘indisini toping.  
4. C4-05 [Oson] — `n` natural sonlar orasida eng katta raqam yig‘indisiga ega sondi toping.  
5. C4-06 [Oson] — `n` raqamlar yig‘indisi juft bo‘lgan sonlarni sanang.  
6. C4-07 [Oson] — 1 … `n`  foyiz (1/i) yig‘indisini hisoblang.  
7. C4-08 [Oson] — `n` raqamlari ko‘paytmasi n ga teng bo‘ladigan sonlarni (Harshad) sanang.  
8. C4-09 [Oson] — 1 … `n` tub sonlar ko‘paytmasi 64 bitdan oshmaguncha to‘xtang, oxirgi qiymatni chiqaring.  
9. C4-10 [Oson] — 1 … `n` kvadratlardan iborat ko‘paytmani toping (overflow tekshirilsin).  
10. C4-11 [Oson] — Faktorial raqamlar yig‘indisi 3 xonali sonlar (strong) ni chop eting.

### 4.2 O‘rta
**Namuna masala (C4-12 [O‘rta]) — Aylana uzunligi PI aproksimatsiyasi**  
Leibniz qatori `n` hadi bo‘yicha π/4 yig‘indisini hisoblab ekranga chiqaring.

**Mashq uchun masalalar**  (7 ta)
1. C4-13 [O‘rta] — e soni natural qator (1 + 1/1! + …) bo‘yicha `n` hadi.  
2. C4-14 [O‘rta] — Sin(x) Teylor qatori (5 hadi).  
3. C4-15 [O‘rta] — Daromad foizi: oyma-oy 12 oy summa.
4. C4-16 [O‘rta] — Arifmetik-geometrik progressiyaning birinchi `n` hadi yig‘indisi (a·r^(i−1)) hisoblang.  
5. C4-17 [O‘rta] — Kredit miqdori, foiz stavkasi va muddat berilganda 12 oy to‘lov jadvalini sikl orqali chop eting.  
6. C4-18 [O‘rta] — Harmonik qator yig‘indisi ε (0 < ε < 1) dan kichik bo‘lmaguncha nechta had kerakligini aniqlang.  
7. C4-19 [O‘rta] — √2 ni Vieta mahsuloti orqali ε aniqlikgacha aproksimatsiya qiling.  

### 4.3 Qiyin
**Namuna masala (C4-20 [Qiyin]) — Euler gamma (γ) approksimatsiyasi**  
`n` berilganda γ ≈ Hₙ − ln n formulasi orqali qiymatni hisoblang (`Hₙ` — harmonik yig‘indi).

```dart
double H = 0;
for (int i = 1; i <= n; i++) {
  H += 1 / i;
}
print(H - log(n));
```

**Mashq uchun masalalar**
1. C4-21 [Qiyin] — ζ(2)=π²/6 qatorini sikl bilan hisoblab, xato ≤ 1e-6 bo‘lguncha necha had kerak?  
2. C4-22 [Qiyin] — `x` berilganda e^x ni continued fraction 10 darajagacha hisoblang.  
3. C4-23 [Qiyin] — Catalan doimiysi qatorini ε aniqlikgacha sikl bilan hisoblang.

---
## 5. Break/Continue & Sentinel

### 5.1 Oson
**Namuna masala (C5-01 [Oson]) — Nolga qadar yig‘indi**  
Sonlar ketma-ket kiritiladi. 0 kiritilganda sikl to‘xtaydi; jami yig‘indini chiqarish.

```dart
double sum = 0;
while (true) {
  double x = double.parse(stdin.readLineSync()!);
  if (x == 0) break;
  sum += x;
}
print(sum);
```

**Mashq uchun masalalar**
1. C5-02 [Oson] — 100 dan katta son kiritilsa siklni tugatib, nechta son kiritilganini chiqarish.  
2. C5-03 [Oson] — 0 — tugash, musbatlar yig‘indi, manfiylar ko‘paytma; yakunda ikkisini chiqaring.  
3. C5-04 [Oson] — 1 … `n` sonlar ko‘paytmasida toq son kelsa continue (skipped).  
4. C5-05 [Oson] — 1 … 50 sonlarda 3 va 5 ga karrali bo‘lsa chop etmay continue.  
5. C5-06 [Oson] — `a`-dan `b`-gacha sonlarda 7 ga bo‘linmaydiganlarini sanang.  
6. C5-07 [Oson] — 1 … `n` oralig‘ida tub bo‘lmasa continue, aks holda yig‘indi.  
7. C5-08 [Oson] — Random son (1–6) tashlanadi; 6 chiqquncha urinishlar sonini chiqaring.  
8. C5-09 [Oson] — Sirli sonni topguncha taxminlar sanog‘i; to‘g‘ri taxminda break.  
9. C5-10 [Oson] — 1 … `n` sonlar kvadratida oxirgi raqam 5 bo‘lsa continue.  
10. C5-11 [Oson] — Matn o‘qish: faqat a-z harflarni sanang, boshqalarida continue.

### 5.2 O‘rta
**Namuna masala (C5-12 [O‘rta]) — Birinchi tub**  
`n` ≥ 2 berilgan. `n` dan boshlab yuqoriga qarab birinchi tub sonni toping (break).

**Mashq uchun masalalar**
1. C5-13 [O‘rta] — 1 … `n` sonlarda kvadrat son uchrasa ko‘paytmani to‘xtatib natijani chiqaring.  
2. C5-14 [O‘rta] — Belgilar oqimidan birinchi katta lotin harfini topib chop eting.  
3. C5-15 [O‘rta] — Xetchinson ketma-ketligida 1 dan kichik bo‘lsa break.  
4. C5-16 [O‘rta] — 3 ta ketma-ket manfiy son kiritilsa sikl tugasin.  
5. C5-17 [O‘rta] — 1 … `n` sonlarda raqamlar yig‘indisi 13 bo‘lsa continue.  
6. C5-18 [O‘rta] — Random zar: 2 ta ketma-ket 6 tushganda sikl tugasin.  
7. C5-19 [O‘rta] — Parol: 3 marta noto‘g‘ri kiritilsa dasturni to‘xtatish.

### 5.3 Qiyin
**Namuna masala (C5-20 [Qiyin]) — 100 ta tub yetganda**  
Ikkita ichma-ich sikl orqali 1 … `n²` tub sonlarni toping; 100-ta topilganda barcha siklni to‘xtating.

**Mashq uchun masalalar**
1. C5-21 [Qiyin] — Collatz ketma-ketligida maksimal uzunlikka ega sonni 1 … `n` oralig‘ida toping (1e6 bosqichdan oshsa break).  
2. C5-22 [Qiyin] — 1 … `n` tub sonlar yig‘indisi 64-bit chegarasidan oshsa siklni to‘xtatib oxirgi yig‘indini chop etish.  
3. C5-23 [Qiyin] — Tasodifiy `n × n` matritsa: diagonalida 0 bo‘lmaguncha takror yaratish.