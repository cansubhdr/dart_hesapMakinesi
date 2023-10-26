import 'dart:io';

void toplamaIslemi(double sayi1, double sayi2) {
  print("Toplam: ${sayi1 + sayi2}");
}

void cikarmaIslemi(double sayi1, double sayi2) {
  print("Fark: ${sayi1 - sayi2}");
}

void carpmaIslemi(double sayi1, double sayi2) {
  print("Çarpım: ${sayi1 * sayi2}");
}

void bolmeIslemi({required double bolunen, required double bolen}) {
  if (bolen == 0) {
    print("Hata: Bir sayıyı sıfıra bölemezsiniz.");
  } else {
    print("Bölüm: ${bolunen / bolen}");
  }
}

void main() {
  while (true) {
    print("Hesap makinesine hoşgeldiniz...");
    print("Yapmak istediğiniz işlemi girin (+, -, *, /)...");
    print("İşlemden çıkmak istiyorsanız başka herhangi bir harfe basın");

    String? islem = stdin.readLineSync();
    if (islem != "+" && islem != "-" && islem != "*" && islem != "/") {
      break;
    }

    print("Birinci sayıyı girin...");
    double sayi1 = double.parse(stdin.readLineSync()!);

    print("İkinci sayıyı girin...");
    double sayi2 = double.parse(stdin.readLineSync()!);

    if (islem == "+") {
      toplamaIslemi(sayi1, sayi2);
    } else if (islem == "-") {
      cikarmaIslemi(sayi1, sayi2);
    } else if (islem == "*") {
      carpmaIslemi(sayi1, sayi2);
    } else if (islem == "/") {
      bolmeIslemi(bolunen: sayi1, bolen: sayi2);
    }

    print("\n\n\n\n\n");
  }
}
