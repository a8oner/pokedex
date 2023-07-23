import 'package:a13_proje/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   // PokeApi.getPokemonData(); pokdex_api'deki debug'ı çalıştırmak için gerekliydi
    return ScreenUtilInit(
      designSize:Size(412,732) ,
      builder: (context,child){
        return MaterialApp(
          title: 'Pokedex',
          debugShowCheckedModeBanner: false,
          theme:  ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
          home: HomePage(),
        );
      }
    );
  }
}
