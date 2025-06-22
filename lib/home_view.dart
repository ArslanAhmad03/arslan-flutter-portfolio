import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const HomeView({super.key, required this.mobileBody, required this.desktopBody});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < 681){
            return widget.mobileBody;
          }else{
            return widget.desktopBody;
          }
        },
    );
  }
}
