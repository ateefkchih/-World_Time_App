import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:wrld_time/services/time.dart';

class loading extends StatefulWidget {
  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  void setuptime() async {
    WorldTime instance =
        WorldTime(location: 'Tunis', flag: 'tunis.jpg', url: 'africa/tunis');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'times': instance.times,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    setuptime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
          child: SpinKitCubeGrid(
            color: Colors.white,
            size: 50.0,
          ),
        ));
  }
}
