import 'package:flutter/material.dart';
import 'package:wrld_time/pages/home.dart';
import 'package:wrld_time/pages/loca.dart';
import 'package:wrld_time/pages/loading.dart';
import 'package:wrld_time/services/weather.dart';
void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => loading(),
      '/home': (context) => home(),
      '/location': (context) => chooselocation(),

    }));
