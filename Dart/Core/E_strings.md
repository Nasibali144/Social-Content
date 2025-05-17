# 5-BOʻLIM  ·  STRINGLAR (STRINGS)

## Kirish
Ushbu bo‘limda matn (string) bilan ishlashni o‘rganasiz: uzunlik, belgilarga murojaat, izlash, sanash, transformatsiya, format va naqshlarni tekshirish. Har mavzu 1 namuna, 10 Oson, 7 O‘rta, 3 Qiyin vazifadan iborat.

---
## 1. Boshlang‘ich Amallar (Basic Ops)

### 1.1 Oson
**Namuna masala (E1-01 [Oson]) — String uzunligi**  
Bir satr berilgan. Uning uzunligini chop eting.

```dart
String s = stdin.readLineSync()!;
print(s.length);
```

**Mashq vazifalari**
1. E1-02 — Satrdagi har bir belgini alohida qatorda chop etish.  
2. E1-03 — Satrni teskari tartibda chop etish.  
3. E1-04 — Unli (a,o,e,i,u) harflar sonini sanash.  
4. E1-05 — Undosh harflar sonini sanash.  
5. E1-06 — Raqam belgilar sonini sanash.  
6. E1-07 — `k` (1-indeksdan) pozitsiyadagi belgini chiqarish.  
7. E1-08 — Satrdagi barcha harflarni katta harfga o‘tkazish (ASCII +32/-32 ishlatib).  
8. E1-09 — Barcha bo‘sh joylarni olib tashlab yangi satr chiqarish.  
9. E1-10 — Har bir belgi takrorlangan (aa bb) satr yaratish.  
10. E1-11 — Birinchi va oxirgi belgilarni o‘rnini almashtirish.

### 1.2 O‘rta
**Namuna masala (E1-12 [O‘rta]) — Birinchi so‘z**  
Bo‘sh joy bilan ajratilgan satrda birinchi so‘zni chop eting (bo‘sh joy indeksini topib).

**Mashq vazifalari**
1. E1-13 — Oxirgi so‘zni chop etish.  
2. E1-14 — So‘zlar sonini sanash (bo‘sh joylarga qarab).  
3. E1-15 — Eng uzun so‘zni topib chop etish.  
4. E1-16 — Satrdagi so‘zlarni teskari tartibda chiqarish.  
5. E1-17 — Satrdagi ikkita bo‘sh joyni bitta bo‘sh joyga tushirish.  
6. E1-18 — Satrdagi raqamlarni ajratib, ular yig‘indisini topish.  
7. E1-19 — Satrdagi har bir so‘z bosh harfini katta qilish (title case) sikl bilan.

### 1.3 Qiyin
**Namuna masala (E1-20 [Qiyin]) — Belgilar chastotasi**  
Satr berilgan. 26 ta lotin harfi bo‘yicha chastota massivini (histogramma) chop eting.

**Mashq vazifalari**
1. E1-21 — Satrdagi eng ko‘p uchraydigan belgi va uning soni.  
2. E1-22 — Satrdagi takrorlanmaydigan birinchi belgi.  
3. E1-23 — Satrni vaqt murakkabligi O(n²) bo‘lmagan holda teskari qilib chop etish (buffer).

---
## 2. Izlash va Sanash (Search & Count)

### 2.1 Oson
**Namuna masala (E2-01 [Oson]) — ‘a’ harflari soni**  
Satrdagi ‘a’ harfi necha marta uchrashini chop eting.

```dart
int cnt = 0;
for (int i = 0; i < s.length; i++) if (s[i] == 'a') cnt++;
print(cnt);
```

**Mashq vazifalari**
1. E2-02 — ‘A’ yoki ‘a’ harflari soni.  
2. E2-03 — Satrda ‘abc’ ketma-ketligi mavjudmi?  
3. E2-04 — Satrda raqam mavjudligini tekshirish.  
4. E2-05 — Satrda faqat lotin harflari bo‘lsa "YES".  
5. E2-06 — Satrda 2 ta ketma-ket bo‘sh joy bormi?  
6. E2-07 — Satrda palindrom so‘z bormi?  
7. E2-08 — Satrda kamida bitta katta harf bormi?  
8. E2-09 — Satr `s` da `t` kichik satr necha marta uchraydi (qismik?).  
9. E2-10 — Satrda `%` belgisi birinchi marta qayerda uchraydi?  
10. E2-11 — Satrdagi barcha raqamlar yig‘indisi.

### 2.2 O‘rta
**Namuna masala (E2-12 [O‘rta]) — Birinchi takroriy belgi**  
Satrda birinchi takror uchraydigan belgini toping.

**Mashq vazifalari**
1. E2-13 — Oxirgi takrorlanmaydigan belgi.  
2. E2-14 — Eng uzoq takrorlanmaydigan substring uzunligi (O(n²)).  
3. E2-15 — Satrni 2 qismga bo‘lib, chap va o‘ng qismi teng bo‘lsa?  
4. E2-16 — Satrda barcha so‘zlarning o‘rtacha uzunligi.  
5. E2-17 — Satrda eng ko‘p uchragan 2 harf.  
6. E2-18 — Satrni bo‘sh joylar bo‘yicha bo‘lib eng qisqa so‘zni chop etish.  
7. E2-19 — Satrda `()` qavslar balansligini tekshirish.

### 2.3 Qiyin
**Namuna masala (E2-20 [Qiyin]) — Anagram juftlari**  
`n` ta so‘z satr ko‘rinishida beriladi. Anagram juftlari sonini toping.

**Mashq vazifalari**
1. E2-21 — Satrda eng ko‘p uchraydigan substring (uzunligi ≥2) ni topish.  
2. E2-22 — Satrning eng uzun palindrom substringini topish (O(n²)).  
3. E2-23 — K-marta takrorlanadigan so‘zlarni sanash.

---
## 3. Transformatsiyalar (Transformations)

### 3.1 Oson
**Namuna masala (E3-01 [Oson]) — Katta/kichik harf almashtirish**  
Har bir harfning registrini teskarisiga o‘zgartiring.

```dart
String out = '';
for (int i = 0; i < s.length; i++) {
  int code = s.codeUnitAt(i);
  if (code >= 65 && code <= 90) out += String.fromCharCode(code + 32);
  else if (code >= 97 && code <= 122) out += String.fromCharCode(code - 32);
  else out += s[i];
}
print(out);
```

**Mashq vazifalari**
1. E3-02 — Satrni teskari qilib yangi satr (reverse).  
2. E3-03 — Unli harflarni `*` belgisi bilan almashtirish.  
3. E3-04 — Har bir so‘zni teskari yozish.  
4. E3-05 — 2 ta satrni birlashtirib (concatenate) chop etish.  
5. E3-06 — K-belgidan keyin (`k` beriladi) satrni 2 qismga bo‘lib joyini almashtirish.  
6. E3-07 — Satrdagi ketma-ket bo‘sh joylarni 1 taga qisqartirish.  
7. E3-08 — Satrni palindromga aylantirish uchun oxiriga uning teskari nusxasini qo‘shish.  
8. E3-09 — Har so‘z bosh harfini katta qilish.  
9. E3-10 — Belgilarni ASCII bo‘yicha o‘sish tartibida saralash.  
10. E3-11 — `n` marta chapga siklik siljitish.

### 3.2 O‘rta
**Namuna masala (E3-12 [O‘rta]) — Caesar shifri (shift 3)**  
Har bir harfni 3 pozitsiyaga o‘ngga siljiting.

**Mashq vazifalari**
1. E3-13 — Ixtiyoriy `k` siljishli Caesar shifri.  
2. E3-14 — Satrni ASCII kodlari yig‘indisiga aylantirish.  
3. E3-15 — Raqamlarni `(`num`)` ko‘rinishiga o‘zgartirish.  
4. E3-16 — Repeated key XOR shifrlash (1-bayt).  
5. E3-17 — Har so‘z ohiriga uning uzunligini qo‘shish.  
6. E3-18 — CamelCase dan snake_case ga o‘tkazish.  
7. E3-19 — Snake_case dan CamelCase ga o‘tkazish.

### 3.3 Qiyin
**Namuna masala (E3-20 [Qiyin]) — Run Length Encoding**  
`aaabb` → `a3b2` formatida kodlang.

**Mashq vazifalari**
1. E3-21 — RLE dekodlash.  
2. E3-22 — Stringni minimal uzunlikdagi RLE qilganda uzunlikni chiqarish.  
3. E3-23 — Belgilar chastotasiga qarab satrni qayta tartiblash (desc).

---
## 4. Ajratish va Raqamlar (Parsing & Numbers)

### 4.1 Oson
**Namuna masala (E4-01 [Oson]) — Int ga aylantirish**  
Satr berilgan. Son (faqat raqamlar) ga aylantirib chop eting.

```dart
int n = 0;
for (int i = 0; i < s.length; i++) {
  n = n * 10 + (s.codeUnitAt(i) - 48);
}
print(n);
```

**Mashq vazifalari**
1. E4-02 — Satrni raqam + raqam + … formatdan yig‘indiga aylantirish.  
2. E4-03 — Satrni ikkilik son deb olib, o‘nlikka o‘tkazish.  
3. E4-04 — Satr o‘n oltilik (`hex`) bo‘lsa, o‘nlikka.  
4. E4-05 — Satrda onlik va kasr qismli sonni double ga aylantirish.  
5. E4-06 — Satrda manfiy sonni aniqlash va `-` belgisini chiqarish.  
6. E4-07 — Satrda barcha sonlarni topib ularning ko‘paytmasi.  
7. E4-08 — Satrda eng katta natural sonni topish.  
8. E4-09 — Satrda barcha 2 xonali sonlarning o‘rtacha qiymati.  
9. E4-10 — Satrni 2likka o‘tkazib, 1 lar sonini sanash.  
10. E4-11 — CSV (`,` bilan) raqamlar yig‘indisini topish.

### 4.2 O‘rta
**Namuna masala (E4-12 [O‘rta]) — ISBN-10 tekshirish**  
10 xonali ISBN tekshiruv raqamini hisoblang.

**Mashq vazifalari**
1. E4-13 — Bank kartasi Luhn algoritmi tekshiruvi.  
2. E4-14 — IPv4 manzilini to‘g‘riligi (0-255 va 3 nuqta) ni tekshirish.  
3. E4-15 — Matnda sana `dd.mm.yyyy` formatda bormi?  
4. E4-16 — Simple markdown heading (`#`) larni soni.  
5. E4-17 — HTML teglarini sanash (`<tag>`).  
6. E4-18 — Email manzilini tekshirish (oddiy).  
7. E4-19 — URL-dagi domenni ajratib chop etish.

### 4.3 Qiyin
**Namuna masala (E4-20 [Qiyin]) — Matnni tokenlarga bo‘lish**  
Bo‘sh joy va punktuatsiya bo‘yicha tokenlar ro‘yxatini chop eting.

**Mashq vazifalari**
1. E4-21 — Simple calculator: ifoda `a+ b* c` qiymatini hisoblang (faqat +,* va butunlar).  
2. E4-22 — JSON-ga o‘xshash `{key:value}` juftliklarni ajratib chop etish.  
3. E4-23 — Satrda rim raqamlarini (I,V,X,L,C) o‘nlikka o‘tkazish.

---
## 5. Naqsh va Palindromlar (Patterns & Advanced)

### 5.1 Oson
**Namuna masala (E5-01 [Oson]) — Palindrom tekshirish**  
Satr palindrom bo‘lsa "YES" aks holda "NO".

**Mashq vazifalari**
1. E5-02 — Satrda 2 xonali raqam palindrom bormi?  
2. E5-03 — 2 ta satr anagrammi ekanligini tekshirish.  
3. E5-04 — Satrni teng 2 qismga bo‘lib palindrom bo‘lsa?  
4. E5-05 — Belgilarini teskari qilib yangi palindrom hosil qilish.  
5. E5-06 — K-marta aylantirish (rotate) orqali palindrom bo‘lish- bo‘lmasligini tekshirish.  
6. E5-07 — Satrda 3 marta ketma-ket bir xil belgi mavjudmi?  
7. E5-08 — Satrda "abba" keksa palindrom substring bormi?  
8. E5-09 — Satr ASCII kodlari yig‘indisi juft bo‘lsa?  
9. E5-10 — Satrni 2 ga bo‘lib, chap qismi unli soni > o‘ng qismi unli soni?  
10. E5-11 — Satrni ichidagi so‘zlarni alfavit bo‘yicha saralash.

### 5.2 O‘rta
**Namuna masala (E5-12 [O‘rta]) — Eng uzun palindrom substring**  
O(n²) yechim.

**Mashq vazifalari**
1. E5-13 — 2 ta satr eng uzun umumiy substring (LCS) uzunligi (O(n²)).  
2. E5-14 — Satrda takroriy naqsh (pattern) bo‘lsa minimal takror uzunligi.  
3. E5-15 — Satrni eng kam sonli qo‘shish bilan palindromga aylantirish.  
4. E5-16 — Satrdagi barcha permutationlari orasida palindrom bormi?  
5. E5-17 — K-uzunlik substring tekshirish (sliding window) palindromi.  
6. E5-18 — Belgilar chastotasi bo‘yicha satrlarni solishtirish (sort key).  
7. E5-19 — Satrni shuffle qilib palindrom hosil bo‘la oladimi?

### 5.3 Qiyin
**Namuna masala (E5-20 [Qiyin]) — Manacher algoritmisiz eng uzun palindrom**  
O(n²) bilan yeching, O(n) emas.

**Mashq vazifalari**
1. E5-21 — Satrni minimal bo‘lishlar soni bilan palindrom segmentlarga bo‘lish.  
2. E5-22 — 2 ta satrni minimal qo‘shishlar bilan anagramga aylantirish.  
3. E5-23 — 3 ta satr eng uzun umumiy substringini topish.

---
## 6. Boss Challenge
