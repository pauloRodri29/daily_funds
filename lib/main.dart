import 'package:daily_funds/pages/home_page.dart';
import 'package:flutter/material.dart';

main() => runApp(const ManagerPage());

class ManagerPage extends StatefulWidget {
  const ManagerPage({super.key});

  @override
  State<ManagerPage> createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {
  Widget? initPage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: const [GlobalMaterial],
      // supportedLocales: const [Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      home: initPage ?? HomePage(),
    );
  }
}
