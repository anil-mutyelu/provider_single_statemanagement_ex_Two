import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_single_statemanagement_ex_two/provider2.dart';
import 'package:provider_single_statemanagement_ex_two/timercountprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<indatc>(
      create: (_) => indatc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: provedexmple2(),
      ),
    );
  }

}