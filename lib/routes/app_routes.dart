import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/data_diri_page.dart';
import '../pages/pendidikan_page.dart';
import '../pages/pengalaman_page.dart';


class AppRoutes {
  static const String home = '/';
  static const String dataDiri = '/data-diri';
  static const String pendidikan = '/pendidikan';
  static const String pengalaman = '/pengalaman';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    dataDiri: (context) => const DataDiriPage(),
    pengalaman: (context) => const PengalamanPage(),
    pendidikan: (context) => const PendidikanPage(),
  };
}
