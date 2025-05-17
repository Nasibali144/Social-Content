# 6-BOʻLIM  ·  FUNKSIYALAR (FUNCTIONS)

## Kirish
Funktsiyalar kodni bo‘laklarga bo‘lib, takroriy jarayonlarni soddalashtiradi. Ushbu bo‘limda funksiya yaratish, parametrlar o‘tqazish, qiymat qaytarish va yordamchi funksiyalarni o‘rganasiz.

---
## 1. Oddiy Funksiya (Basic)

### 1.1 Oson
**Namuna masala (F1-01 [Oson]) — Kvadrat funksiyasi**  
`int square(int x)` — x ning kvadratini qaytaradi. Foydalanuvchidan `n` olib, `square(n)` natijasini chop eting.

```dart
int square(int x) => x * x;
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(square(n));
}
```

**Mashq vazifalari**
1. F1-02 — `int cube(int x)` yozing.  
2. F1-03 — `double half(double x)` — x/2.  
3. F1-04 — `int add(int a,int b)` — yig‘indi.  
4. F1-05 — `int max2(int a,int b)` — kattasini qaytarish.  
5. F1-06 — `bool isEven(int x)` — juftmi?  
6. F1-07 — `int abs(int x)` — modul (if).  
7. F1-08 — `double areaCircle(double r)` (`π=3.14`).  
8. F1-09 — `int digitsSum(int n)` — raqamlar yig‘indisi.  
9. F1-10 — `bool isPrime(int n)` (oddiy tekshiruv).  
10. F1-11 — `int powi(int a,int k)` — `a^k` (ko‘paytirish sikli).

### 1.2 O‘rta
**Namuna masala (F1-12 [O‘rta]) — Min of Three**  
`min3(a,b,c)` — uchta sonning eng kichigini qaytarish.

**Mashq vazifalari**
1. F1-13 — `max3(a,b,c)` — eng katta.  
2. F1-14 — `median3(a,b,c)` — o‘rta qiymat.  
3. F1-15 — `sign(x)` — -1,0,1 qiymat qaytarsin.  
4. F1-16 — `distance(x1,y1,x2,y2)` — nuqtalar oralig‘i.  
5. F1-17 — `bool isLeap(int y)` — kabisa yil.  
6. F1-18 — `daysInMonth(m,y)` — yil va oy bo‘yicha kunlar soni.  
7. F1-19 — `double bmi(mass, height)` — tana massasi indeksi.

### 1.3 Qiyin
**Namuna masala (F1-20 [Qiyin]) — Quadratic roots**  
`solveQuad(a,b,c)` — haqiqiy ildizlarni chop etish.

**Mashq vazifalari**
1. F1-21 — `int gcd(a,b)` — Evklid usuli iteratsiyasiz (while).  
2. F1-22 — `int lcm(a,b)` — lcm = a*b/gcd.  
3. F1-23 — `bool isPerfect(n)` — mukammal son.

---
## 2. Massiv Funksiyalari (Array Helpers)

### 2.1 Oson
**Namuna masala (F2-01 [Oson]) — Massiv yig‘indisi funksiyasi**  
`int sum(List<int> a)`.

**Mashq vazifalari**
1. F2-02 — `int maxElement(List<int> a)`.  
2. F2-03 — `double average(List<int> a)`.  
3. F2-04 — `int countPositive(List<int> a)`.  
4. F2-05 — `void reverse(List<int> a)` (in-place).  
5. F2-06 — `void fill(List<int> a,int v)` — hammasini `v` ga.  
6. F2-07 — `int indexOf(List<int> a,int x)` — birinchi indeks.  
7. F2-08 — `bool contains(List<int> a,int x)`.  
8. F2-09 — `List<int> copy(List<int> a)`.  
9. F2-10 — `int countDivisible(List<int> a,int k)`.  
10. F2-11 — `void printOdd(List<int> a)`.

### 2.2 O‘rta
**Namuna masala (F2-12 [O‘rta]) — Juft va toq ni ajratish**  
`void separate(List<int> a,List<int> even,List<int> odd)`.

**Mashq vazifalari**
1. F2-13 — `List<int> rotate(List<int> a,int k)`.  
2. F2-14 — `int secondMax(List<int> a)`.  
3. F2-15 — `bool isSorted(List<int> a)`.  
4. F2-16 — `int countPrimes(List<int> a)`.  
5. F2-17 — `void bubbleSort(List<int> a)`.  
6. F2-18 — `List<int> merge(List<int> a,List<int> b)`.  
7. F2-19 — `int mode(List<int> a)` — eng ko‘p uchragan.

### 2.3 Qiyin
**Namuna masala (F2-20 [Qiyin]) — Two-sum**  
`bool twoSum(List<int> a,int s)` (O(n²)).

**Mashq vazifalari**
1. F2-21 — `int longestGrowingSegment(List<int> a)`.  
2. F2-22 — `int subarrayMaxSum(List<int> a)` (Kadane).  
3. F2-23 — `int missingNumber(List<int> a)` — 0…n tartibda bitta yetishmaydi.

---
## 3. String Funksiyalari (String Helpers)

### 3.1 Oson
**Namuna masala (F3-01 [Oson]) — Unli sanash funksiyasi**  
`int vowels(String s)`.

**Mashq vazifalari**
1. F3-02 — `String reverse(String s)`.  
2. F3-03 — `int wordsCount(String s)`.  
3. F3-04 — `bool isUpper(char c)`.  
4. F3-05 — `String toLower(String s)`.  
5. F3-06 — `bool isDigit(char c)`.  
6. F3-07 — `String trim(String s)` (bosh-oxir bo‘sh joy).  
7. F3-08 — `int firstIndex(String s,char c)`.  
8. F3-09 — `String repeat(String s,int k)`.  
9. F3-10 — `bool isPalindrome(String s)`.  
10. F3-11 — `String removeSpaces(String s)`.

### 3.2 O‘rta
**Namuna masala (F3-12 [O‘rta]) — Caesar shifri funksiyasi**  
`String caesar(String s,int k)`.

**Mashq vazifalari**
1. F3-13 — `String titleCase(String s)`.  
2. F3-14 — `bool isAnagram(String a,String b)`.  
3. F3-15 — `String removeDuplicates(String s)`.  
4. F3-16 — `int longestWordLength(String s)`.  
5. F3-17 — `String snakeToCamel(String s)`.  
6. F3-18 — `String camelToSnake(String s)`.  
7. F3-19 — `int countSubstring(String s,String t)` (qismik?).

### 3.3 Qiyin
**Namuna masala (F3-20 [Qiyin]) — Run Length Encoding**  
`String rle(String s)`.

**Mashq vazifalari**
1. F3-21 — `String rleDecode(String s)`.  
2. F3-22 — `int longestPalSub(String s)` (O(n²)).  
3. F3-23 — `bool canFormPalindrome(String s)`.

---
## 4. Ko‘p Parametrli va Default (Advanced Params)

### 4.1 Oson
**Namuna masala (F4-01 [Oson]) — Salom funksiyasi**  
`void greet([String name='Friend'])`.

**Mashq vazifalari**
1. F4-02 — `power(a,{k=2})`.  
2. F4-03 — `areaRect({w=1,h=1})`.  
3. F4-04 — `void printLine(char="*",[int n=10])`.  
4. F4-05 — `sumRange({start=1,end=10})`.  
5. F4-06 — `avg([List<int>? a])` (null check).  
6. F4-07 — `bool between(x,{low=0,high=10})`.  
7. F4-08 — `void repeatAction(int k,void action())`.  
8. F4-09 — `String padLeft(String s,{char=" ",int len})`.  
9. F4-10 — `int clamp(int x,{min=0,max=100})`.  
10. F4-11 — `double perc(num part,{num total=100})`.

### 4.2 O‘rta
**Namuna masala (F4-12 [O‘rta]) — Higher-order apply**  
`List<T> map(List<T> a,T f(T x))`.

**Mashq vazifalari**
1. F4-13 — `reduce(List<int> a,int f(int acc,int x),int init)`.  
2. F4-14 — `filter(List<int> a,bool f(int))`.  
3. F4-15 — `find(List<int> a,bool f(int))`.  
4. F4-16 — `countWhere(List<int> a,bool f(int))`.  
5. F4-17 — `every(List<int> a,bool f(int))`.  
6. F4-18 — `any(List<int> a,bool f(int))`.  
7. F4-19 — `compose(f,g)(x)` — funksiya kompozitsiyasi.

### 4.3 Qiyin
**Namuna masala (F4-20 [Qiyin]) — Memoization**  
`fib(n)` ni kesh bilan.

**Mashq vazifalari**
1. F4-21 — `int countCalls(f,n)` — kompilyatsiz.  
2. F4-22 — `int curry(f,a)(b)` — qisman bog‘lash.  
3. F4-23 — `debounce(f,int ms)` — soxta implement.
