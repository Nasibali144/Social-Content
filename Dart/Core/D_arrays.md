# 4-BOʻLIM  ·  MASSIVLAR (ARRAYS)

## Kirish
Massiv — bir turdagi elementlar ketma-ketligi. Bu bo‘limda massivlar bilan ishlashning bosqichma-bosqich usullarini o‘rganasiz: yaratish, o‘qish, qidirish, transformatsiya, saralash va segment analizi.

Format: har bir mavzu (sub-section) 1 namuna + 10 ta Oson, 7 ta O‘rta, 3 ta Qiyin vazifadan iborat.

---
## 1. Boshlang‘ich Amallar (Basic Ops)

### 1.1 Oson
**Namuna masala (D1-01 [Oson]) — Massiv yigʻindisi**  
`n` va `n` ta butun son beriladi. Massiv elementlari yigʻindisini chop eting.

```dart
int n = int.parse(stdin.readLineSync()!);
List<int> a = List.generate(n, (_) => int.parse(stdin.readLineSync()!));
int sum = 0;
for (int x in a) sum += x;
print(sum);
```

**Mashq vazifalari**
1. D1-02 — Massiv elementlarini bir qatorda chiqarish.  
2. D1-03 — Massivni teskari tartibda chop etish.  
3. D1-04 — Juft sonlar yigʻindisini topish.  
4. D1-05 — Eng katta elementni chop etish.  
5. D1-06 — Eng kichik element indeksini chiqarish.  
6. D1-07 — Manfiy sonlar sonini sanash.  
7. D1-08 — Oʻrtacha qiymatdan katta elementlar soni.  
8. D1-09 — Barcha elementlar ko‘paytmasi.  
9. D1-10 — Toq indeks (1-,3-,…) elementlari yigʻindisi.  
10. D1-11 — Maks va min farqi.

### 1.2 O‘rta
**Namuna masala (D1-12 [O‘rta]) — Ikkinchi eng katta**  
Massivdagi ikkinchi eng katta elementni toping.

**Mashq vazifalari**
1. D1-13 — Eng uzun ketma-ket musbat segment uzunligi.  
2. D1-14 — Massivni chapga 1 pozitsiya aylantirish.  
3. D1-15 — Birinchi musbat element indeksi.  
4. D1-16 — Har elementdan o‘rtacha qiymatni ayrib yangi massiv.  
5. D1-17 — Juft elementlarni toq elementlar bilan almashtirish.  
6. D1-18 — Faqat 1 marta uchragan elementlar soni.  
7. D1-19 — Massivni joyida (in-place) teskari qilish.

### 1.3 Qiyin
**Namuna masala (D1-20 [Qiyin]) — Uzluksiz maksimum yigʻindi**  
Kadane algoritmisiz, barcha `(i,j)` juftliklarni tekshirib maksimal yigʻindini toping.  

**Mashq vazifalari**
1. D1-21 — O‘suvchi uzluksiz segmentlar orasida eng uzuni uzunligi.  
2. D1-22 — Massivni `k` (1 ≤ k < n) ga rotatsiya qilishda minimal ko‘chirib-yozishlar soni.  
3. D1-23 — Ikkita element yigʻindisi `s` ga teng bo‘lgan juftlik bormi? (O(n²)).

---
## 2. Qidirish va Sanash (Search & Count)

### 2.1 Oson
**Namuna masala (D2-01 [Oson]) — Qiymat mavjudmi?**  
`n`, massiv va `x` berilgan. Agar `x` massivda uchrasa "YES", aks holda "NO".

```dart
bool found = false;
for (int v in a) {
  if (v == x) { found = true; break; }
}
print(found ? 'YES' : 'NO');
```

**Mashq vazifalari**
1. D2-02 — `x` ning birinchi indeksi (`−1` agar yoʻq).  
2. D2-03 — `x` ning oxirgi indeksi.  
3. D2-04 — `x` elementlari soni.  
4. D2-05 — Massivda 0 soni mavjudmi?  
5. D2-06 — Ketma-ket 2 ta teng element bormi?  
6. D2-07 — Hech bo‘lmasa 1 tub son mavjudmi?  
7. D2-08 — Faqat manfiy sonlargina bo‘lsa "YES".  
8. D2-09 — Toq indekslarda `x` mavjudmi?  
9. D2-10 — 3 ga karrali sonlar soni.  
10. D2-11 — Kamida bitta kvadrat son bormi?

### 2.2 O‘rta
**Namuna masala (D2-12 [O‘rta]) — `k`-chi kichik element**  
`k` (1 ≤ k ≤ n) berilgan. Linear qidiruv bilan `k`-chi eng kichik elementni toping (`O(n·k)`).

**Mashq vazifalari**
1. D2-13 — Eng qisqa 0-segment uzunligi.  
2. D2-14 — Qiymati dublikat bo‘lgan eng kichik element.  
3. D2-15 — Ketma-ket 2 ta juft son juftligi mavjudmi?  
4. D2-16 — Har elementdan keyin undan katta element bormi? Sanash.  
5. D2-17 — `x` dan kichik eng katta element.  
6. D2-18 — Har qiymat nechta marta uchraganini ro‘yxatlash.  
7. D2-19 — "+-++-" andozasiga mos 5-element segment bormi?

### 2.3 Qiyin
**Namuna masala (D2-20 [Qiyin]) — Ko‘paytma juftligi**  
`p` berilgan. 2 ta element ko‘paytmasi `p` ga teng juftlik bormi? (O(n²)).

**Mashq vazifalari**
1. D2-21 — 3 ta element yigʻindisi `s` bo‘lgan uchlik bormi?  
2. D2-22 — Eng katta `gcd=1` bo‘lgan juftlikni topish.  
3. D2-23 — Farqi minimal bo‘lgan element juftligi.

---
## 3. Transformatsiyalar (Transformations)

### 3.1 Oson
**Namuna masala (D3-01 [Oson]) — Massivni teskari qilish**  

```dart
a.reverse(); // standard method taqiqlangan, sikl bilan amalga oshiring
```

**Mashq vazifalari**
1. D3-02 — Massivni o‘ngga 1 pozitsiya aylantirish.  
2. D3-03 — Birinchi va oxirgi elementni almashtirish.  
3. D3-04 — Har elementni modul qiymatiga almashtirish.  
4. D3-05 — (n juft) massivni yarmalarini almashtirish.  
5. D3-06 — Har elementni keyingisi bilan farqiga almashtirish.  
6. D3-07 — Har elementni 2 marta yozib uzunlikni ikki baravar qilish.  
7. D3-08 — Manfiy sonlarni o‘chirib yangi massiv yaratish.  
8. D3-09 — Oxiriga `k` ta 0 qo‘shish.  
9. D3-10 — Massivni palindromga aylantirish uchun teskari nusxasini qo‘shish.  
10. D3-11 — Juft/toq tartibi buzilgan bo‘lsa qayta tartiblash.

### 3.2 O‘rta
**Namuna masala (D3-12 [O‘rta]) — Siljitish va to‘ldirish**  
Massivni chapga `k` ga siljitib, oxirgi `k` pozitsiyani 0 bilan to‘ldiring.

**Mashq vazifalari**
1. D3-13 — `k` musbat/manfiy bo‘lganda rotatsiya.  
2. D3-14 — Dublikatlarni 1 dona qoldirib "siqish".  
3. D3-15 — Massivni oynaviy (mirror) ko‘rinishga keltirish.  
4. D3-16 — O‘suvchi segmentlar ketma-ketligi soni.  
5. D3-17 — Har bir juft son oldidan 0 qo‘shish.  
6. D3-18 — "Zig-zag" tartibi (kichik-katta-kichik).  
7. D3-19 — Indeksi 3 ga karrali elementlarni ajratib oxiriga joylashtirish.

### 3.3 Qiyin
**Namuna masala (D3-20 [Qiyin]) — 0-lar bir chetda**  
0 larning tartibini saqlagan holda ularni oxiriga ko‘chiring (stable).

**Mashq vazifalari**
1. D3-21 — ±1 lar ketma-ketligini (−,+) minimal almashtirish bilan to‘g‘rilash.  
2. D3-22 — Faqat `reverse` operatsiyalari bilan saralash.  
3. D3-23 — Aylanma sikl (circular shift) kombinatsiyasi bilan berilgan permutatsiyaga keltirish.

---
## 4. Sodda Saralash (Simple Sorting)

### 4.1 Oson
**Namuna masala (D4-01 [Oson]) — Bubble sort**  
Oddiy pufakcha usulida o‘sish tartibi.

**Mashq vazifalari**
1. D4-02 — Selection sort (kamayish).  
2. D4-03 — Insertion sort (o‘sish).  
3. D4-04 — Saralashdan so‘ng elementlarni chop etish.  
4. D4-05 — Saralashdan so‘ng min-max farqi.  
5. D4-06 — Saralangan massiv medianasini topish.  
6. D4-07 — Saralashdan keyin dublikatlarni o‘chirish.  
7. D4-08 — 2 ta saralangan massivni birlashtirish (merge).  
8. D4-09 — Binar qidiruv bilan `x` topish.  
9. D4-10 — Eng yaqin juftlik (min farq) ni topish.  
10. D4-11 — Har element va uning boshlang‘ich indeksi farqi.

### 4.2 O‘rta
**Namuna masala (D4-12 [O‘rta]) — "Odd first, even later" saralash**  
Juft/Toq bo‘yicha stabil saralash.

**Mashq vazifalari**
1. D4-13 — Modul qiymat bo‘yicha saralash.  
2. D4-14 — Faqat juft indekslar kesimini saralash.  
3. D4-15 — Mahalliy minimalarni o‘sish bo‘yicha joylashtirish.  
4. D4-16 — Saralashsiz `k`-eng kichik element (selection pass).  
5. D4-17 — "Dutch flag" (0,1,2) algoritmi.  
6. D4-18 — "Almost sorted" holatda bubble almashtirishlar soni.  
7. D4-19 — Saralashdan so‘ng har elementning dastlabki indeksi.

### 4.3 Qiyin
**Namuna masala (D4-20 [Qiyin]) — Bitta yo‘qolgan element**  
0 … n tartiblangan massivda bitta son yetishmasa, sikl yordamida toping.

**Mashq vazifalari**
1. D4-21 — 2 bosqichli stable saralash: avval toq/juft, so‘ng o‘sish.  
2. D4-22 — Minimal almashtirishlar soni (bubble count) bilan saralash.  
3. D4-23 — Har ith iteratsiyada massiv holatini chop etish.

---
## 5. Segment Analiz (Subarrays)

### 5.1 Oson
**Namuna masala (D5-01 [Oson]) — 3 element yigʻindisi**  
Har bir ketma-ket 3 elementning yigʻindisini chop eting.

**Mashq vazifalari**
1. D5-02 — Ketma-ket 2 elementning maksini chop etish.  
2. D5-03 — Ketma-ket 4 element o‘rtachasini chop etish.  
3. D5-04 — Uzunligi `k` bo‘lgan barcha subarray yigʻindilarini chiqarish (sliding window).  
4. D5-05 — Uzunligi `k` subarraylarda `max − min` farqini chop etish.  
5. D5-06 — Har subarray uzunligi 2 da eng kichik elementni chiqarish.  
6. D5-07 — Har subarrayda kamida bitta 0 bo‘lsa, uning boshlang‘ich indeksini chop etish.  
7. D5-08 — Sliding window (uzunlik 3) har qadamdagi o‘zgarishni ko‘rsatish.  
8. D5-09 — Har subarray 5 elementning o‘rtacha kvadrat xatosi (MSE).  
9. D5-10 — Subarray yigʻindisi juft bo‘lsa sanash.  
10. D5-11 — Subarray ko‘paytmasi 0 bo‘lmagan subarraylar sonini sanash.

### 5.2 O‘rta
**Namuna masala (D5-12 [O‘rta]) — Maksimal subarray yigʻindisi (Kadane)**

**Mashq vazifalari**
1. D5-13 — Minimal subarray yigʻindisi.  
2. D5-14 — Maks subarray uzunligi, yigʻindisi ≤ `s`.  
3. D5-15 — 0/1 massivi: teng sonli 0 va 1 bo‘lgan eng uzun subarray.  
4. D5-16 — Qator yigʻindilari farqining eng katta qiymati.  
5. D5-17 — Ko‘paytmasi manfiy bo‘lgan subarraylar soni.  
6. D5-18 — `k`-eng katta subarray yigʻindisi (O(n²)).  
7. D5-19 — `max − min` farqi bo‘yicha eng katta subarray.

### 5.3 Qiyin
**Namuna masala (D5-20 [Qiyin]) — Ikki subarray farqi**  
No-overlap 2 ta subarray yigʻindilari farqi maksimal bo‘lsin.

**Mashq vazifalari**
1. D5-21 — 3 ta non-overlap subarraylarning umumiy maksimal yigʻindisi.  
2. D5-22 — Uzunligi ≤ `k` subarraylarning o‘rtacha kvadrat xatosi minimumi.  
3. D5-23 — Ko‘paytmasi 64-bitdan oshmaydigan subarraylar soni.

