import 'package:flutter/material.dart';
import 'package:ibreathe/setSplashScreen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'account_page.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://saevexsfyqgxatepzklg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNhZXZleHNmeXFneGF0ZXB6a2xnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY2OTkzMzUsImV4cCI6MTk5MjI3NTMzNX0.v4CPFq8qjqkDmQoCte489pDDPEXrRc_Rg0nay4Yynsk',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iBreathe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
