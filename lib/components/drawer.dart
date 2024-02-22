import 'package:firebase_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onProfileTap;
  final void Function()? onSignOut;
  const MyDrawer(
      {super.key, required this.onProfileTap, required this.onSignOut});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.person,
              color: Colors.white,
              size: 64,
            )),
            MyListTile(
              icon: Icons.home,
              text: 'HOME',
              onTap: () => Navigator.pop(context),
            ),
            MyListTile(
              icon: Icons.person,
              text: 'PROFILE',
              onTap: onProfileTap,
            ),
          ],
        ),
        const SizedBox(
          height: 170,
        ),
        MyListTile(
          icon: Icons.logout,
          text: 'LOG OUT',
          onTap: onSignOut,
        ),
      ]),
    );
  }
}
