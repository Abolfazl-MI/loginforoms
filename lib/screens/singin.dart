import 'package:flutter/material.dart';
import 'package:loginforoms/widgets/input.dart';

import '../contsatnce.dart';
class SingInForum extends StatefulWidget {
  const SingInForum({Key? key}) : super(key: key);

  @override
  State<SingInForum> createState() => _SingInForumState();
}

class _SingInForumState extends State<SingInForum> {
  TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 100, right: 20),
          child: SizedBox(
              width: 60,
              height: 60,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {},
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
                children: [FormSingup(context, usernameController, emailController, passwordController)],
              )
            ],
          ),
        ));
  }
}

Widget FormSingup(context, usernameController, emailController, passwordController) {
  var height = MediaQuery.of(context).size.height;
  return Container(
      height: height * 0.65,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(46),
          topRight: Radius.circular(46),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 45,
              left: 25,
            ),
            child: Text('Get Started', style: kHeaderStyle),
          ),
          Expanded(
              child: Column(
            children: [
              const SizedBox(height: 10),
              InputWidget(
                controller:usernameController,
                icon: Icons.person_outline_outlined,
                passwordFeild: false,
                lable: 'UserName',
              ),
              const SizedBox(height: 20),
              InputWidget(
                controller: emailController,
                icon: Icons.email_outlined,
                passwordFeild: false,
                lable: 'Email',
              ),
              const SizedBox(height: 20),
              InputWidget(
                controller: passwordController,
                icon: Icons.password_rounded,
                passwordFeild: true,
                lable: 'Password',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 95.0, left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    child: Text(
                      'Sing up',
                      style: kSingupStyle,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    child: Text(
                      'Sing In',
                      style: kLoginStyle,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          )),
        ],
      ));
}
