import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:zoom_app/Pages/home.dart';
import 'package:zoom_app/Pages/loginpage.dart';
import 'package:zoom_app/Services/Auth/Google_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  
  runApp(
    TheResponsiveBuilder(builder: (context, orientation, screenType) {
     return const MyApp();}));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZOOM App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
        )
      ),
    
      routes: {
        '/Login': (context) => LoginPage(),
        '/HomePage': (context) => HomePage(),
      },

      home: StreamBuilder(
        stream: AuthService().authChanges,
         builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if(snapshot.hasData){
            return HomePage();
          }else{
            return LoginPage();
          }
        })
    );
  }
}

 