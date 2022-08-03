import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../router/router.gr.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key, required this.da}) : super(key: key);
  final String da;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page ${widget.da}"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.pop("nasdj");
          },
          child: Text(widget.da.isEmpty ? "Goto to Third page" : widget.da),
        ),
      ),
    );
  }
}
