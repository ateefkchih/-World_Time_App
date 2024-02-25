import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class ta9ess {
  int temp;

  ta9ess({required this.temp});

  Future<void> getWeather() async {
    try {
      Response response =
          await get(Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=d9f702633b87473f830180452232506&q=Tunis&days=1&aqi=no&alerts=no/'));
      Map data =
          jsonDecode(response.body); //request ll data ml url/api provided
      //print(data);
      int temp = data['current.temp_c']; //getting properties from that data
      //print(datetime);
      //print(offset);

      //datetime obj
    } catch (e) {
      print('error w fazette  :$e');
    }
  }
}
