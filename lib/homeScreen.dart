import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff000066 ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: Image.asset("assets/images/menu.png",color: Colors.white,height: 25,width: 25,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }),
           actions:[
          IconButton(
              icon: Icon(Icons.search), onPressed: () => {print("Search action button clicked ")}),
          IconButton(
              icon: Icon(Icons.duo), onPressed: () => {print("Duo action")})
        ],
        title: Text("Drawer Example"),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
          ),
        ),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: const Color(0xff000066 )),
          currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/09/16/17/42/business-woman-2756210__340.jpg"),
              ),
          accountName: Text(
            "Shruthi Kotekar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "shruthikotekar10@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
         
        ),
           ListTile(  
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.settings), title: Text("Settings"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
          ],
        ),
      ),
    );
  }
}