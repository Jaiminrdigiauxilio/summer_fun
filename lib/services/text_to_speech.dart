import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class EnableTTS {
  static final FlutterTts tts = FlutterTts();

  static void speakWord(String word) async {
    await tts.setLanguage("en-US");
    await tts.setSpeechRate(0.5);
    await tts.setVolume(1.0);
    await tts.setPitch(0.7);
    var lang = await tts.isLanguageAvailable("en-US");

    var synthSpeech = await tts.speak(word);
    if (synthSpeech == 1) {
      debugPrint(
          "-/-/-/-/-/-/-/-/-/-/-/  spoke the word successfully, lang used: $lang");
    } else {
      debugPrint("-/-/-/-/-/-/-/-/-/-/-/  error in speaking");
    }
  }
}
