import 'package:flutter/material.dart';
import 'package:shop_app/pages/start_page.dart';

void main()
{

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.black38,
          secondary: Colors.white70
        )
      ),
      debugShowCheckedModeBanner: false,

      home: StartedPage(),
    );
  }
}