import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}


var emailController = TextEditingController();
var pssdController = TextEditingController();
var nameController = TextEditingController();
var urlController = TextEditingController();
var phoneController = TextEditingController();
var caloriesController = TextEditingController();

var email,pssd,name,url,phone,calories;

class _FormDemoState extends State<FormDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Demo"),
        backgroundColor: Colors.grey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              maxLength: 10,
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Name"
              ),
            ),
            TextField(
              controller: emailController ,
              decoration: InputDecoration(
                  hintText: "Email"
              ),
            ),
            TextField(
              controller: pssdController,
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
            TextField(
              controller: urlController,
              decoration: InputDecoration(
                  hintText: "Url"
              ),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  hintText: "Phone number"
              ),
            ),
            TextField(
              controller: caloriesController,
              decoration: InputDecoration(
                  hintText: "Calories"
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(40.0),
              child: SizedBox(

                child: ElevatedButton(onPressed: () {

                  setState(() {
                    name = nameController.text;
                    email = emailController.text;
                    pssd = pssdController.text;
                    url = urlController.text;
                    phone = phoneController.text;
                    calories = caloriesController.text;


                    if(name.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter your Name'))
                      );
                    }
                    else
                    if(email.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter your Email'))
                      );
                    }
                    else if(pssd.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter your Password'))
                      );
                    }
                    else
                    if(url.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter the Url'))
                      );
                    }
                    else
                    if(phone.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter your Phone number'))
                      );
                    }
                    else
                    if(calories.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter your Calories'))
                      );
                    }

                  });

                }, child: Text("Submit"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),),
              ),
            )

          ],
        ),
      ),
    );
  }
}

