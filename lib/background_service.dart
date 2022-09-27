import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_background_service/flutter_background_service.dart';


Future<void> initializeService() async {
  final service = FlutterBackgroundService();
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      // this will executed when app is in foreground or background in separated isolate
      onStart: onStart,

      // auto start service
      autoStart: true,
      isForegroundMode: true,
    ),
    iosConfiguration: IosConfiguration(
      // auto start service
      autoStart: true,

      // this will executed when app is in foreground in separated isolate
      onForeground: onStart,

      // you have to enable background fetch capability on xcode project
      onBackground: () {},
    ),
  );
  service.start();
}

Future fetchParameter() async {
  var dio = Dio();
  final response = await dio.post(
      'http://test-tech.api.jtisrv.com/md/public/API/BgService/Hit',
      data: {
        "nama": "Posma Janius Sianturi",
        "email": "posmajaniuss@gmail.com",
        "nohp": "081804067321"
      });

}
// to ensure this executed
// run app from xcode, then from xcode menu, select Simulate Background Fetch

void onStart(service) async {
  // bring to foreground
  Timer.periodic(const Duration(seconds: 30), (timer) async {
    await fetchParameter().then((a) {
      print(a.toString());
    });
  });
}