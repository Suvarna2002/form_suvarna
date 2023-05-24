import 'package:flutter/material.dart';
import 'regpage.dart';


class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  bool loginpssd = true;

  var emailController = TextEditingController();
  var pssdController = TextEditingController();

  var email = '', pssd = '';

  void toggle_pssd() {
    setState(() {
      loginpssd = !loginpssd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 70, 10, 8),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome",
                      style:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                    )),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                  child: Text(
                    "Enter your Email address to sign in.\nEnjoy your food:)",
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Username or Email')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: TextField(
                  controller: pssdController,
                  obscureText: loginpssd,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Password'),
                      suffixIcon: InkWell(
                          onTap: () {
                            toggle_pssd();
                          },
                          child: loginpssd
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.black45),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      email = emailController.text;
                      pssd = pssdController.text;

                      if (email.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please enter your Email')));
                      } else if (pssd.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Please enter your Password')));
                      }
                    });
                  },
                  child: SizedBox(
                      width: 1200,
                      height: 40,
                      child: Center(
                        child: Text('SIGN IN'),
                      )),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 10, 20, 10),
                child: Row(
                  children: [
                    Text('Dont have an account?',
                        style: TextStyle(color: Colors.black45)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegPage(),
                              ));
                        },
                        child: Text(
                          'Create new account',
                          style: TextStyle(color: Colors.green),
                        )),
                  ],
                ),
              ),
              Text(
                "Or",
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                child: SizedBox(
                  width: 1200,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text("CONNECT WITH FACEBOOK"),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                child: SizedBox(
                  width: 1200,
                  height: 40,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png'),
                      label: Text("CONNECT WITH GOOGLE")),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}