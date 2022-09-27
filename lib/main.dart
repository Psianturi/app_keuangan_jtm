import 'package:flutter/material.dart';
import 'package:test_flutter_jtm/background_service.dart';
import 'package:test_flutter_jtm/shared/theme.dart';
import 'package:test_flutter_jtm/views/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Masuk Flutter',
      theme: ThemeData(
          scaffoldBackgroundColor: white,
        appBarTheme: AppBarTheme(
          backgroundColor: white,
          elevation: 0,
          centerTitle: true,
          // iconTheme: IconThemeData(
          //   color: blackColor,
          // ),
          titleTextStyle: blueTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      ),

      home: const HomePage(),
    );
  }
}



