import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do"),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) => [

              PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.note),
                  title:Text("notes")

              )




              ),
              PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.calendar_month),

                  title:Text("calender")

              )




              ),
              PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.folder),
                  title:Text("folders")
              )
              ),
              PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.photo_camera),

                  title:Text("camera")

              )
              ),
              PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.settings),

                  title:Text("settings")
              )
              ),
              PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.logout_outlined),

                  title:Text("sign out")
              )
              ),



            ],
          )
        ],
      ),
    );
  }
}
