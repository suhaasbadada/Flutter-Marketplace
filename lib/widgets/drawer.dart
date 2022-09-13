import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imgURL =
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia-exp1.licdn.com%2Fdms%2Fimage%2FC5603AQGiMnwFek101w%2Fprofile-displayphoto-shrink_200_200%2F0%2F1630437620602%3Fe%3D1658361600%26v%3Dbeta%26t%3DaFJCCRP_xicw8ISCdY23tYLOnvz-ickEYoItLGjmn8k&imgrefurl=https%3A%2F%2Fin.linkedin.com%2Fpub%2Fdir%2F%2B%2FBadada%2Fin-6508-Hyderabad-Area%252C-India&tbnid=5w581eQbz6-xbM&vet=12ahUKEwiwtajhi5H6AhXSjtgFHRHzB-oQMygEegQIARBA..i&docid=LXgbd4s_Cz63DM&w=200&h=200&itg=1&q=Suhaas%20Badada&ved=2ahUKEwiwtajhi5H6AhXSjtgFHRHzB-oQMygEegQIARBA";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(color: Colors.red),
                accountEmail: Text("suhaasbadada@gmail.com"),
                accountName: Text("Suhaas Rao Badada"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/MEEE.jpeg",
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
