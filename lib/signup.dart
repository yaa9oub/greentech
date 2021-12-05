import 'package:flutter/material.dart';
import 'package:greentech/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool meat = false, pre = false, veg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("SignUp",
                      style: TextStyle(
                          fontSize: 35.0, fontWeight: FontWeight.bold)),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(hintText: "What are you"),
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(hintText: "Adresse"),
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Wasted food are you providing?",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w400)),
                      CheckboxListTile(
                        title: const Text("Meat"),
                        value: meat,
                        onChanged: (newValue) {
                          setState(() {
                            meat = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: const Text("Vegetables"),
                        value: veg,
                        onChanged: (newValue) {
                          setState(() {
                            veg = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: const Text("Prepared Food"),
                        value: pre,
                        onChanged: (newValue) {
                          setState(() {
                            pre = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()),
                        );
                      },
                      child: const Text("SIGNUP"))
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
