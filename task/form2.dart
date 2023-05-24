import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(
          'Login',
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Register Form",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(label: Text("Enter your Name")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      prefixIcon: Icon(Icons.account_box),
                      label: Text('Enter your email')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(Icons.email),
                      label: Text('Email')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: pssdController,
                  obscureText: loginpssd,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      prefixIcon: Icon(Icons.security),
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
              SizedBox(
                width: 375,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        email = emailController.text;
                        pssd = pssdController.text;

                        if (email.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Please enter your Email')));
                        } else if (pssd.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Please enter your Password')));
                        }
                      });
                    },
                    child: Text('Register')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
