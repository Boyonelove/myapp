import 'package:flutter/material.dart';
import 'package:pdf_manager/models/pdf_manager_model.dart';
import 'package:pdf_manager/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  PdfManager.createDirs();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PdfManager(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          color: Colors.white,
          home: HomeScreen()),
    );
  }
}
