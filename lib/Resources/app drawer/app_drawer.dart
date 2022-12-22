// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class SideBar extends StatefulWidget {
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  File? _image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => _image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      child: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 260,
              child: DrawerHeader(
                  padding: EdgeInsets.only(
                    left: 30,
                    bottom: 25,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/drawerHeaderBg.png',
                        ),
                        fit: BoxFit.fill),
                    border: Border(
                      bottom:
                          BorderSide(width: 4.0, color: Colors.grey.shade200),
                    ),
                    color: Colors.grey.shade300,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => pickImage(),
                        child: Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(
                                    1,
                                    3,
                                  ),
                                )
                              ],
                              border: Border.all(
                                width: 5,
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: _image == null
                                ? Image.asset('images/profilePicture.jpg',
                                    fit: BoxFit.fill)
                                // Use the Image.file widget to display the selected image
                                : Image.file(_image!),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'SHIHAB SALEEM',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '+919745802826',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey.shade600,
                            fontSize: 14,
                            letterSpacing: .5),
                      ),
                    ],
                  )),
            ),
            SidebarTextTile(
              title: 'My Bookmarks',
              icon: Icons.bookmark_border,
            ),
            SidebarTextTile(
              title: 'Open Demat Account',
              icon: Icons.card_travel,
            ),
            Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SidebarTextTile(
              title: 'About Marketfeed',
              icon: Icons.business,
            ),
            SidebarTextTile(
              title: 'Privacy Policy',
              icon: Icons.privacy_tip_outlined,
            ),
            SidebarTextTile(
              title: 'Terms of Use',
              icon: Icons.info_outlined,
            ),
            SidebarTextTile(
              title: 'Support',
              icon: Icons.mail_outline,
            ),
            SidebarTextTile(
              title: 'Share with friends!',
              icon: Icons.share,
            ),
            SidebarTextTile(
              title: 'Delete Account',
              icon: Icons.person_remove_alt_1_outlined,
            ),
            SidebarTextTile(
              title: 'Logout',
              color: Colors.red,
              icon: Icons.logout,
            ),
            Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Made with  🖤  by marketfeed',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Version 4.0.2',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade600)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class SidebarTextTile extends StatelessWidget {
  final String title;
  final IconData icon;
  Color? color = Colors.black;

  SidebarTextTile(
      {super.key, required this.title, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 20),
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 15, color: color),
        ),
      ),
    );
  }
}
