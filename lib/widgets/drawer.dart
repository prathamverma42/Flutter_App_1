import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp1.licdn.com/dms/image/C5603AQE4vYyRTAgqbA/profile-displayphoto-shrink_200_200/0/1592284030163?e=1635379200&v=beta&t=kEaO7uaDAcAw-CIKedeYjdMJEo_TISardzPSFj2GUcM";

    return Drawer(
      child: Container(
        color: Colors.teal,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("prathamverma12345@gmail.com"),
                accountName: Text("Pratham Verma"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  // borderRadius: BorderRadius.circular(30.0),
                  // child: ClipRRect(
                  //   child: Image.asset('assets/images/img1.jpg'),
                  // ),
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
