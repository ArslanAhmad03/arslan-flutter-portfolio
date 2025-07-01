import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/hireButton.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    print(width);

    return Scaffold(
      body: Stack(
        children: [
          // drawer..
          SafeArea(
            child: Container(
              width: 200,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // drawer
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/dbaszvjvp/image/upload/v1749195964/kpw7tcth9jt73b8psjun.jpg',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('arslan'),
                      ],
                    ),
                  ),
                  customTile(
                    ontap: () {},
                    icon: Icon(Icons.home),
                    title: 'Home',
                  ),
                  customTile(
                    ontap: () {},
                    icon: Icon(Icons.design_services),
                    title: 'Services',
                  ),
                  customTile(
                    ontap: () {},
                    icon: Icon(Icons.my_library_add),
                    title: 'Portfolio',
                  ),
                  customTile(
                    ontap: () {},
                    icon: Icon(Icons.phone),
                    title: 'Contact',
                  ),
                  customTile(
                    ontap: () {},
                    icon: Icon(Icons.pages),
                    title: 'Pages',
                  ),
                ],
              ),
            ),
          ),

          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInExpo,
            builder: (context, double val, child) {
              return (Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    title: Text("EnvatoMarket"),
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,

                    actions: [HireButton(onTap: () {})],

                    leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          value == 0 ? value = 1 : value = 0;
                        });
                      },
                      child: Icon(Icons.menu),
                    ),
                  ),
                  body: Center(child: Text('tweeen animation')),
                ),
              ));
            },
          ),
        ],
      ),
    );
  }

  Widget customTile({
    required VoidCallback ontap,
    required Icon icon,
    required String title,
  }) {
    return ListTile(onTap: ontap, leading: icon, title: Text(title));
  }

  void tweenAni() {
    Tween();
  }
}
/*
appBar: AppBar(
        // title: Text("EnvatoMarket"),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,

        actions: [HireButton(onTap: () {})],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// intro
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 60,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 8.0,
                      spreadRadius: 0.6,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // rowUser(textTheme, colorScheme),
                      userInfo(textTheme, colorScheme),

                      Spacer(),

                      // width > 921 ? DrawerItems() : SizedBox(),
                      Spacer(),

                      customElevatedButton(onTap: () {}, title: "Let's Talk"),
                    ],
                  ),
                ),
              ),
            ),

            AnimatedContact(
              iconData: Icons.import_contacts,
              title: 'title',
              subtitle: 'subtitle',
              onTap: () {},
            ),

            AnimatedIconButton(iconData: Icons.import_contacts, onTap: () {}),
          ],
        ),
      ),

      drawer: Drawer(
        child: ListView(children: navItems),
        ),
*/