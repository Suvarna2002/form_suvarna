import 'package:alertmessage/Task2/login.dart';
import 'package:flutter/material.dart';

class QForm extends StatefulWidget {
  const QForm({Key? key}) : super(key: key);

  @override
  State<QForm> createState() => _QFormState();
}

class _QFormState extends State<QForm> {
  bool showpassword=true;
  @override
  void togglepassword()
  {
    setState(() {
      showpassword=!showpassword;

    });
  }
  var fnameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var fname='',email='',password='';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),

            child: Text("Create Account",style: TextStyle(fontSize: 25,color: Colors.black),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Enter Your Name , Email And Password For Sign Up."),
                ),


                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()),);


                },
                    child: Text("Already Have Account ?", style: TextStyle(color: Colors.green),)
                )
              ],
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(10.0),
            child: TextField(
              controller: fnameController,
              decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  label: Text(
                    "Full Name",style: TextStyle(fontSize:15),

                  )

              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(10.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  label: Text(
                      "Email Address"
                  )
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(10.0),
            child: TextField(
              controller: passwordController,
              obscureText: showpassword,
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      togglepassword();

                    },
                    child:showpassword?Icon (Icons.visibility):Icon(Icons.visibility_off),
                  ),
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  label: Text(
                      "Password"
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,
              child: ElevatedButton(onPressed: () {},

                  child: Text("SIGN UP",style: TextStyle(color: Colors.white),),
                  style:ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.green),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 260,
              child: Text("By Signing up you agree to our Terms Conditions & Privacy Policy",
                style: TextStyle(color: Colors.black45),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),

            child: Center(child: Text("Or",style: TextStyle(fontSize: 20,color: Colors.black),)),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,

              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.facebook_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
                label: const Text("CONNECT WITH FACEBOOK",style: TextStyle(color: Colors.white),),
                style:ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Color.fromRGBO(66, 103, 178, 8)),
                ),
                onPressed: () {},
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 1200,
              height: 40,

              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.search ,
                  color: Color.fromRGBO(66, 103, 178, 8),
                  size: 24.0,
                ),
                label: const Text("CONNECT WITH GOOGLE",style: TextStyle(color: Colors.white),),
                style:ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {},
              ),
            ),
          )

        ],

      ),
    );
  }
}
