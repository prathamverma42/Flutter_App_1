import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.linkedin.com%2Fin%2Fpratham-verma-bb44a61a6&psig=AOvVaw1XjIqgQx3p7jiF1iy8_dF4&ust=1630389350478000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCIDZteSH2PICFQAAAAAdAAAAABAD";
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
                      child: Image.asset("assets/images/img1.jpg"),
                      // borderRadius: BorderRadius.circular(30.0),
                      // child: ClipRRect(
                      //   child: Image.asset('assets/images/img1.jpg'),
                      // ),
                    ))),
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
