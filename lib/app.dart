import 'package:api_fetch_assignment/photo_gallery_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Viewer',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            toolbarHeight: 80,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 6,
            toolbarTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )
          )
      ),
      home:const PhotoListScreen(),
    );
  }
}