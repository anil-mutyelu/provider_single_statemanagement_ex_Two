import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_single_statemanagement_ex_two/provider2.dart';


class provedexmple2 extends StatefulWidget
{
  const provedexmple2({super.key});

  @override
  State<StatefulWidget> createState() {
    return _provedexmple2();
  }

}


class _provedexmple2 extends State <provedexmple2>
{

  @override
  void initState() {

    final cp = Provider.of<indatc>(context,listen: false);

    super.initState();
    // Timer(const Duration(seconds: 1), (timer) {
     Timer.periodic(const Duration(microseconds: 0), (timer) {
      cp.setCount();



    });
  }


  @override
  Widget build(BuildContext context) {


      print("build-------------------");

    return Scaffold(
      body: Center(
        child: Container(
          width: 1324,
          height: 244,
          color: Colors.cyan,
          // child: Center(child: Text(cp.count.toString(),style: (TextStyle(fontSize: 60)),)),
          child: Consumer<indatc>(builder: (context,value,child)
          {
            print("only this consumer method build");
            return Center(
                child: Text(value.countdata.toString(),
                  style: (const TextStyle(fontSize: 60)),));
          }),
        ),
      ),
    );
  }
}