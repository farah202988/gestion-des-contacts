// lib/main.dart

import 'package:flutter/material.dart';
import 'pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion des Contacts',
      debugShowCheckedModeBanner: false,
      
      // Thème clair
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.light,
        
        // Configuration pour l'accessibilité
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
        // Tailles de texte accessibles
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 24),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 16),
        ),
        
        // Boutons accessibles
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(88, 48), // Taille minimale recommandée
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            minimumSize: const Size(48, 48),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      
      // Thème sombre pour les utilisateurs sensibles à la lumière
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 24),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 16),
        ),
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(88, 48),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            minimumSize: const Size(48, 48),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      
      // Suivre le mode système
      themeMode: ThemeMode.system,
      
      // Page d'accueil
      home: const SignInPage(),
      
      // TODO: Configuration des routes pour vos futures pages
      // routes: {
      //   '/signin': (context) => const SignInPage(),
      //   '/signup': (context) => const SignUpPage(),
      //   '/home': (context) => const HomePage(),
      //   '/contacts': (context) => const ContactsPage(),
      // },
    );
  }
}