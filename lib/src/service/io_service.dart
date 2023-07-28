import 'dart:io';
import 'package:translator/translator.dart';

class IOService {
  void write(String text) => stdout.write(text);

  String read() => stdin.readLineSync() ?? "";
  
  Future<void> w(String text, String translate) async {
    final translator = GoogleTranslator();
    Translation translated = await translator.translate(text, to: translate);
    write(translated.text);
  }
}
