import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecommdedSpaces() async {
    var result = await http.get(
        Uri.https('https://bwa-cozy.herokuapp.com/', 'recommended-spaces'));

    var jsonData = jsonDecode(result.body);
  }
}
