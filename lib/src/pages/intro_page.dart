import '../service/io_service.dart';

class IntroPage {
  IOService io;
  IntroPage({required this.io});
  String languige = "uz";

  void start() async {
    io.write("""
Tilni tanlang / Выберите язык / Chose languige
1. Uzbekcha
2. Русский
3. English
: """, languige);

    String chose = io.read();
    switch (chose) {
      case "1":
        languige = "uz";
      case "2":
        languige = "ru";
      case "3":
        languige = "en";
    }

    io.write("""
- Saladlar
- Ichimliklar
- Fast Food
- Shirinliklar
- Milliy taomlar
""", languige);
  }
}
