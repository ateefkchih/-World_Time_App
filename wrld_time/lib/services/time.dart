import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String times = "";
  String flag; //url to image
  String url;
  int temp=0;
  late bool isDaytime;

  WorldTime({required this.location, required this.flag, required this.url, temp});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data =
          jsonDecode(response.body); //request ll data ml url/api provided
      //print(data);
      String datetime = data['datetime']; //getting properties from that data
      String offset = data['utc_offset'].substring(1, 3);
      //print(datetime);
      //print(offset);

      //datetime obj
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour > 5 && now.hour < 20 ? true : false;
      times = DateFormat.jm().format(now);
    } catch (e) {
      print('error w fazette  :$e');
      times = 'femech wa9t';
    }
  }
}
