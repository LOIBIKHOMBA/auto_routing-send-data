import 'dart:developer';
import 'dart:html';

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
  String isValid = "";

  TextEditingController _username = TextEditingController();
  TextEditingController _pwd = TextEditingController();

  String username = "Loibi";
  String pwd = '12345';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page $_res"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(

                // height: MediaQuery.of(context).size.height / ,
                child: CircleAvatar(
              backgroundImage: AssetImage('assets/rock.jpg'),
              // child: Image.asset('assets/rock.jpg'),
              radius: 60,
            )),
            const SizedBox(
              height: 20,
            ),
            Form(
                child: SizedBox(
              height: 300,
              width: 300,
              child: Column(
                children: [
                  TextFormField(
                    controller: _username,
                    decoration: const InputDecoration(
                      labelText: 'Enter UserName',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _pwd,
                    decoration: const InputDecoration(
                      labelText: 'Enter pwd.',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Text(isValid)
                ],
              ),
            )),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // final res =
                    //     await context.router.push(SecondRoute(da: "tamo"));

                    if (_username.text == username && _pwd.text == pwd) {
                      context.router.push(SecondRoute(da: _username.text));
                    } else {
                      setState(() {
                        isValid = "invalid Username/ Password";
                      });
                    }
                    ;
                    // setState(() {
                    //   _res = res.toString();
                    // });
                    // log(res.toString());
                  },
                  child: const Text("Go to Second Page")),
            ),
          ],
        ),
      ),
    );
  }
}
