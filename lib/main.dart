import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'module/start_view.dart';
import 'package:flutter_project/module/home/home_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: null,
        primarySwatch: Colors.grey,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionHandleColor: Colors.grey,
          selectionColor: Color.fromARGB(255, 233, 232, 232),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Hoàng Mạnh Lâm',
      home: const StartScreen(),
    );
  }
}
