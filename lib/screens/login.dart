import 'package:flutter/material.dart';
import 'package:loginforoms/widgets/input.dart';

import '../contsatnce.dart';
class LoginForum extends StatelessWidget {
  const LoginForum({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 75, right: 20),
          child: SizedBox(
              width: 60,
              height: 60,
              child: FloatingActionButton(
                onPressed: () {},
                elevation: 0,
                backgroundColor: Colors.red,
                child: const Icon(Icons.arrow_forward_ios_sharp),
              )),
        ),
        body: Container(
          color: Colors.grey.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.35,
                    child: const Center(
                        child:
                            Image(image: AssetImage('assets/singin/logo.png'))),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [Login(context)],
              )
            ],
          ),
        ));
  }
}

Widget Login(context) {
  var height = MediaQuery.of(context).size.height;
  return SingleChildScrollView(
      child: Container(
          height: height * 0.65,
          decoration: kHeaderConfig,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
                padding: const EdgeInsets.only(top: 45, left: 25),
                child: Text('WelCome Back ', style: kHeaderStyle)),
            Expanded(
                child: Column(children: [
              const SizedBox(height: 50),
              InputWidget(
                  icon: Icons.email_outlined,
                  passwordFeild: false,
                  lable: 'Email'),
              const SizedBox(height: 40),
              InputWidget(
                  icon: Icons.password_outlined,
                  passwordFeild: true,
                  lable: 'Password'),
              Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text('Forgeted Password',
                              style: kForgetedPassword)))),
              Padding(
                  padding: const EdgeInsets.only(top: 85.0, left: 20),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                          child: Text('Sing In', style: kLoginStyle),
                          onPressed: () {}))),
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        child: Text('Sing Up', style: kSingupStyle),
                        onPressed: () {},
                      )))
            ]))
          ])));
}
