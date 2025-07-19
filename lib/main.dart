import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/contact_page.dart';
import 'pages/gallery_page.dart';
import 'pages/about_page.dart';
import 'pages/map_page.dart';

void main() {
  runApp(const HeritageSpacesApp());
}

class HeritageSpacesApp extends StatelessWidget {
  const HeritageSpacesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heritage Spaces',
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/contact': (context) => ContactPage(),
        '/gallery': (context) => GalleryPage(),
        '/about': (context) => AboutPage(),
        '/map': (context) => MapPage(),
      },
    );
  }
}
