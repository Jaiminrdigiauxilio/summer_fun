import 'dart:convert';
import 'package:flutter/services.dart';

class ReadJson {

  static Future<List<Map<String, dynamic>>> readJson(String fileName) async {
    String jsonStr = await rootBundle.loadString("lib/data/$fileName");
    List<dynamic> jsonList = json.decode(jsonStr);
    return jsonList.cast<Map<String, dynamic>>();

  }

}