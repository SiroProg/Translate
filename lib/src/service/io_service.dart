import 'dart:io';
import 'package:translator/translator.dart';

class IOService {
  void write(String text, String lang) => stdout.write(text);

  String read() => stdin.readLineSync() ?? "";

  Future<void> translateAndWrite(String text, String translate) async {
    final translator = GoogleTranslator();
    Translation translated = await translator.translate(text, to: translate);
    stdout.write(translated.text.toString());
  }
}
