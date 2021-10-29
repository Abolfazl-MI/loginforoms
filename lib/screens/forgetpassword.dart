
import 'package:flutter/material.dart';
import 'package:loginforoms/widgets/input.dart';

import '../contsatnce.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.only(bottom: 100, right: 20),
        //   child: SizedBox(
        //       width: 60,
        //       height: 60,
        //       child: FloatingActionButton(
        //         onPressed: () {},
        //         backgroundColor: Colors.red,
        //         child: const Icon(Icons.arrow_forward_ios_sharp),
        //       )),
        // ),
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
                children: [ForgetedPassword(context)],
              )
            ],
          ),
        ));
  }
}

Widget ForgetedPassword(context) {
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
              top: 40,
              left: 25,
            ),
            child: Column(
              children: [
                Text("""Forgot Your Password ? 
                """, style: kHeaderStyle),
                Padding(
                  padding: const EdgeInsets.only(top: 2, right: 15),
                  child: Text(" Enter your Email bellow to",
                      style: kRestPasswordText),
                ),
                //
                Padding(
                  padding: EdgeInsets.only(
                    top: 2,
                  ),
                  child:
                      Text("receive your password", style: kRestPasswordText),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2,
                  ),
                  child: Text("reset instruction", style: kRestPasswordText),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              const SizedBox(height: 30),
              InputWidget(
                passwordFeild: false,
                lable: 'Email',
                icon: Icons.email_outlined,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 250,
                    height: 40,
                    color: Colors.red,
                    child: const Text(
                      'Send Email',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ))
            ],
          )),
        ],
      ));
}
