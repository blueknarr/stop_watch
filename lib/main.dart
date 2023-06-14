import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stop_watch/stop_watch_screen.dart';

void main() {
  /// 1초 마다 timer 함수가 실행 된다.
  Timer.periodic(Duration(seconds: 1), (timer) {
    print('...');
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StopWatchScreen(),
    );
  }
}
