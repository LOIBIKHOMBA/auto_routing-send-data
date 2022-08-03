import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:autorou/router/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String _res = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page $_res"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final res = await context.router.push(SecondRoute(da: "tamo"));
              if (res != null) {
                setState(() {
                  _res = res.toString();
                });
                log(res.toString());
              }
            },
            child: const Text("Go to Second Page")),
      ),
    );
  }
}
