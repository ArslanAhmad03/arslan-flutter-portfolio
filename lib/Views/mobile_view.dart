
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/animated_contact.dart';
import 'package:my_portfolio/utils/animated_icon_button.dart';
import 'package:my_portfolio/utils/hireButton.dart';

import '../utils/drawerItems.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(

        appBar: AppBar(
          title: Text("EnvatoMarket"),
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,

          actions: [
            HireButton(onTap: () {  },),
          ],
        ),

      body: SingleChildScrollView(
        child: Column(
            children: [

              AnimatedContact(iconData: Icons.import_contacts, title: 'title', subtitle: 'subtitle', onTap: (){} ),
              AnimatedIconButton(iconData: Icons.import_contacts, onTap: (){} ),
            ]
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: navItems,
        ),
      )
    );
  }
}
