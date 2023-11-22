import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/provider/home_provider.dart';
import 'package:sample_provider/screen/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'MoCHTA Admin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  HomeView(),
      ),
    );
  }
}

