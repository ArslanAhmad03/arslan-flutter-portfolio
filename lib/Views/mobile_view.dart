
import 'package:avatar_glow/avatar_glow.dart' show AvatarGlow;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glass_kit/glass_kit.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GlassContainer.clearGlass(
                width: 100,
                height: 30,
                borderColor: Color(0xFFFF5722),
                borderRadius: BorderRadius.circular(16.0),
                child: InkWell(
                  onTap: (){},
                  onHover: (val) {},
                  borderRadius: BorderRadius.circular(15.0),
                  child: Center(child: Text('Hire Me!')),
                ),
              ),
            ),
          ],
        ),

      body: SingleChildScrollView(
        child: Column(
            children: [

              /// intro
              Container(
                height: 600,
                width: width,
                decoration: BoxDecoration(color: Color(0xFF3D2E5C)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: width / 7,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        height: 55,
                        width: width / 2 * 1.5,
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
                              rowUser(textTheme, colorScheme),

                              Spacer(),

                              width > 921 ? rowContent() : SizedBox(),

                              Spacer(),

                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape:
                                  WidgetStateProperty.all<
                                      RoundedRectangleBorder
                                  >(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        30.0,
                                      ),
                                    ),
                                  ),

                                  foregroundColor:
                                  WidgetStateProperty.resolveWith<Color?>((
                                      Set<WidgetState> states,
                                      ) {
                                    if (states.contains(
                                      WidgetState.hovered,
                                    )) {
                                      return Color(
                                        0xFFFF5722,
                                      ); // Text color on hover
                                    }
                                    return null;
                                  }),

                                  overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>((
                                      Set<WidgetState> states,
                                      ) {
                                    if (states.contains(
                                      WidgetState.hovered,
                                    )) {
                                      return Colors.white;
                                    }
                                    return null;
                                  }),

                                  side:
                                  WidgetStateProperty.resolveWith<
                                      BorderSide?
                                  >((Set<WidgetState> states) {
                                    if (states.contains(
                                      WidgetState.hovered,
                                    )) {
                                      return BorderSide(
                                        color: Color(0xFFFF5722),
                                        width: 1.0,
                                      );
                                    }
                                    return null;
                                  }),
                                ),
                                child: Text("Let's Talk"),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: width / 10 - 50,),

                      Flexible(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [

                            AvatarGlow(
                              glowColor: Colors.white,
                              duration: Duration(milliseconds: 2000),
                              repeat: true,
                              curve: Curves.easeInToLinear,
                              child: CircleAvatar(
                                maxRadius: width / 10,
                                minRadius: width / 20,
                                backgroundImage: NetworkImage('https://res.cloudinary.com/dbaszvjvp/image/upload/v1749195964/kpw7tcth9jt73b8psjun.jpg'),
                              ),
                            ),

                            Text.rich(
                              TextSpan(
                                text: "I'm ",
                                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'Arslan Ahmad, ',
                                    style: textTheme.displaySmall?.copyWith(color: colorScheme.secondary,fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                  ),
                                  TextSpan(text: 'App Developer', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis)),
                                ],
                              ),
                            ),


                            Text(
                              ''' a self-motivated student of Computer Science with a passion to learn and grow. I'm open to working with a team of experts for personal and corporate growth in building technologies that have a positive impact on the world''',
                              style: TextStyle(fontWeight: FontWeight.normal,height: 1.5),
                            ),


                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(
                height: width / 8 - 50,
                width: width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 7),
                  child: CarouselSlider(
                    items: [
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/logos/homecare.png',width: 26, height: 26),
                            SizedBox(width: 4.0),
                            Flexible(child: Text('HomeCare',overflow: TextOverflow.ellipsis,softWrap: true)),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/logos/countit.png',width: 24, height: 24),
                            SizedBox(width: 4.0),
                            Flexible(child: Text('CashCounter',overflow: TextOverflow.ellipsis,softWrap: true)),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/logos/devicon.png',width: 24, height: 24),
                            SizedBox(width: 4.0),
                            Flexible(child: Text('AttendanceApp',overflow: TextOverflow.ellipsis,softWrap: true)),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/logos/account.png',width: 24, height: 24),
                            SizedBox(width: 4.0),
                            Flexible(child: Text('MyAccount',overflow: TextOverflow.ellipsis,softWrap: true)),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/logos/android.png',width: 24, height: 24),
                            SizedBox(width: 4.0),
                            Flexible(child: Text('Android',overflow: TextOverflow.ellipsis,softWrap: true)),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/logos/grocery.png',width: 24, height: 24),
                            SizedBox(width: 4.0),
                            Flexible(child: Text('GoGrocery',overflow: TextOverflow.ellipsis,softWrap: true)),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/logos/quran.png',width: 24, height: 24),
                            SizedBox(width: 4.0),
                            Flexible(child: Text('HolyQuran',overflow: TextOverflow.ellipsis,softWrap: true)),
                          ],
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 80,
                      viewportFraction: 0.2,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      enableInfiniteScroll: true,
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: false,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),

              /// about me
              Container(
                height: 600,
                width: width,
                decoration: BoxDecoration(color:Color(0x400A0C18)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: width / 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Flexible(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                GlassContainer.clearGlass(
                                  width: 100,
                                  height: 30,
                                  borderColor: Color(0xFFFF5722),
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Center(child: Text('About Me')),
                                ),

                                SizedBox(height: 20.0),

                                Text(
                                  'Get a app that will make a lasting impression on your audience!!!',
                                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                                ),

                                SizedBox(height: 10.0),

                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                                ),

                                SizedBox(height: 10.0),

                                Card(
                                    color: Colors.grey.shade600,
                                    margin: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Name:',style: TextStyle(color: Color(0xFFFF5722))),
                                                  Text('arslan ahmad'),
                                                  Text('Email', style: TextStyle(color: Color(0xFFFF5722))),
                                                  Text('ars0009059@gmail.com'),
                                                ],
                                              ),

                                              SizedBox(width: 4.0),

                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Phone:', style: TextStyle(color: Color(0xFFFF5722))),
                                                  Text('+923070009059'),
                                                  Text('GitHub', style: TextStyle(color: Color(0xFFFF5722))),
                                                  Text('ArslanAhmad03'),
                                                ],
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    )
                                ),

                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape:
                                        WidgetStateProperty.all<
                                            RoundedRectangleBorder
                                        >(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              30.0,
                                            ),
                                          ),
                                        ),

                                        foregroundColor:
                                        WidgetStateProperty.resolveWith<Color?>((
                                            Set<WidgetState> states,
                                            ) {
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return Color(
                                              0xFFFF5722,
                                            ); // Text color on hover
                                          }
                                          return null;
                                        }),

                                        overlayColor:
                                        WidgetStateProperty.resolveWith<Color?>((
                                            Set<WidgetState> states,
                                            ) {
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return Colors.white;
                                          }
                                          return null;
                                        }),

                                        side:
                                        WidgetStateProperty.resolveWith<
                                            BorderSide?
                                        >((Set<WidgetState> states) {
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return BorderSide(
                                              color: Color(0xFFFF5722),
                                              width: 1.0,
                                            );
                                          }
                                          return null;
                                        }),
                                      ),
                                      child: Text("Contact Me"),
                                    ),
                                    SizedBox(width: 8.0),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape:
                                        WidgetStateProperty.all<
                                            RoundedRectangleBorder
                                        >(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              30.0,
                                            ),
                                          ),
                                        ),

                                        foregroundColor:
                                        WidgetStateProperty.resolveWith<Color?>((
                                            Set<WidgetState> states,
                                            ) {
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return Color(
                                              0xFFFF5722,
                                            ); // Text color on hover
                                          }
                                          return null;
                                        }),

                                        overlayColor:
                                        WidgetStateProperty.resolveWith<Color?>((
                                            Set<WidgetState> states,
                                            ) {
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return Colors.white;
                                          }
                                          return null;
                                        }),

                                        side:
                                        WidgetStateProperty.resolveWith<
                                            BorderSide?
                                        >((Set<WidgetState> states) {
                                          if (states.contains(
                                            WidgetState.hovered,
                                          )) {
                                            return BorderSide(
                                              color: Color(0xFFFF5722),
                                              width: 1.0,
                                            );
                                          }
                                          return null;
                                        }),
                                      ),
                                      child: Text("Download my resume"),
                                    ),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              /// my service
              SizedBox(
                height: 600,
                width: width,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: width / 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Flexible(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text.rich(
                                  TextSpan(
                                    text: 'My',
                                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: ' Services',
                                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFFF5722)),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 20.0),

                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),

                                SizedBox(height: 20.0),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [

                                    Card(
                                      child: Container(
                                        height: 340,
                                        width: width / 4 - 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            SizedBox(
                                              height: 50,
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Text('UI/UX Design',style: TextStyle(fontWeight: FontWeight.bold),),
                                              ),
                                            ),

                                            Divider(color: Colors.grey),

                                            SizedBox(height: 30),

                                            Spacer(),

                                            Container(
                                              height: 240,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12.0),
                                                image: DecorationImage(image: AssetImage('assets/images/download.jpeg'),fit: BoxFit.cover),
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      child: Container(
                                        height: 340,
                                        width: width / 4 - 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            SizedBox(
                                              height: 50,
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Text('App Design',style: TextStyle(fontWeight: FontWeight.bold),),
                                              ),
                                            ),

                                            Divider(color: Colors.grey),

                                            SizedBox(height: 30),

                                            Spacer(),

                                            Container(
                                              height: 240,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12.0),
                                                image: DecorationImage(image: AssetImage('assets/images/what-is-flutter.png'),fit: BoxFit.cover),
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      child: Container(
                                        height: 340,
                                        width: width / 4 - 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            SizedBox(
                                              height: 50,
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Text('App Development',style: TextStyle(fontWeight: FontWeight.bold),),
                                              ),
                                            ),

                                            Divider(color: Colors.grey),

                                            SizedBox(height: 30),

                                            Spacer(),

                                            Container(
                                              height: 240,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12.0),
                                                image: DecorationImage(image: AssetImage('assets/images/download.jpeg'),fit: BoxFit.cover),
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 20.0),

                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape:
                                    WidgetStateProperty.all<
                                        RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          30.0,
                                        ),
                                      ),
                                    ),

                                    foregroundColor:
                                    WidgetStateProperty.resolveWith<Color?>((
                                        Set<WidgetState> states,
                                        ) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return Color(
                                          0xFFFF5722,
                                        ); // Text color on hover
                                      }
                                      return null;
                                    }),

                                    overlayColor:
                                    WidgetStateProperty.resolveWith<Color?>((
                                        Set<WidgetState> states,
                                        ) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return Colors.white;
                                      }
                                      return null;
                                    }),

                                    side:
                                    WidgetStateProperty.resolveWith<
                                        BorderSide?
                                    >((Set<WidgetState> states) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return BorderSide(
                                          color: Color(0xFFFF5722),
                                          width: 1.0,
                                        );
                                      }
                                      return null;
                                    }),
                                  ),
                                  child: Text("See All"),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              /// portfolio
              Container(
                height: 600,
                width: width,
                decoration: BoxDecoration(color: Color(0xFF3D2E5C)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: width / 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Flexible(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text.rich(
                                  TextSpan(
                                    text: 'Look at My ',
                                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: 'Portfolio',
                                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFFF5722)),
                                      ),
                                    ],
                                  ),


                                ),
                                SizedBox(height: 20.0),

                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),

                                SizedBox(height: 20.0),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [

                                    Card(
                                      child: Container(
                                        height: 250,
                                        width: width / 3,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12.0),
                                          image: DecorationImage(image: AssetImage('assets/images/download.jpeg'),fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),

                                    Card(
                                      child: Container(
                                        height: 250,
                                        width: width / 3,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(12.0),
                                          image: DecorationImage(image: AssetImage('assets/images/what-is-flutter.png'),fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),

                                SizedBox(height: 20.0),

                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape:
                                    WidgetStateProperty.all<
                                        RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          30.0,
                                        ),
                                      ),
                                    ),

                                    foregroundColor:
                                    WidgetStateProperty.resolveWith<Color?>((
                                        Set<WidgetState> states,
                                        ) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return Color(
                                          0xFFFF5722,
                                        ); // Text color on hover
                                      }
                                      return null;
                                    }),

                                    overlayColor:
                                    WidgetStateProperty.resolveWith<Color?>((
                                        Set<WidgetState> states,
                                        ) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return Colors.white;
                                      }
                                      return null;
                                    }),

                                    side:
                                    WidgetStateProperty.resolveWith<
                                        BorderSide?
                                    >((Set<WidgetState> states) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return BorderSide(
                                          color: Color(0xFFFF5722),
                                          width: 1.0,
                                        );
                                      }
                                      return null;
                                    }),
                                  ),
                                  child: Text("See All"),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              /// contact
              SizedBox(
                height: 600,
                width: width,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: width / 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Flexible(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Let's make your brand brilliant!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

                                SizedBox(height: 20.0),

                                Container(
                                  height: 50,
                                  width: width - 100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: TextField(
                                    cursorColor: Color(0xFFFF5722),
                                    keyboardType: TextInputType.text,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      hint: Text("What's your name"),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),

                                    ),
                                  ),
                                ),

                                SizedBox(height: 10.0),

                                Container(
                                  height: 50,
                                  width: width - 100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: TextField(
                                    cursorColor: Color(0xFFFF5722),
                                    keyboardType: TextInputType.emailAddress,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      hint: Text("Your email"),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),

                                    ),
                                  ),
                                ),

                                SizedBox(height: 10.0),

                                Container(
                                  height: 200,
                                  width: width - 100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: TextField(
                                    cursorColor: Color(0xFFFF5722),
                                    keyboardType: TextInputType.text,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      hint: Text("Tell me about your project"),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),

                                    ),
                                  ),
                                ),


                                SizedBox(height: 20.0),

                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape:
                                    WidgetStateProperty.all<
                                        RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          30.0,
                                        ),
                                      ),
                                    ),

                                    foregroundColor:
                                    WidgetStateProperty.resolveWith<Color?>((
                                        Set<WidgetState> states,
                                        ) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return Color(
                                          0xFFFF5722,
                                        ); // Text color on hover
                                      }
                                      return null;
                                    }),

                                    overlayColor:
                                    WidgetStateProperty.resolveWith<Color?>((
                                        Set<WidgetState> states,
                                        ) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return Colors.white;
                                      }
                                      return null;
                                    }),

                                    side:
                                    WidgetStateProperty.resolveWith<
                                        BorderSide?
                                    >((Set<WidgetState> states) {
                                      if (states.contains(
                                        WidgetState.hovered,
                                      )) {
                                        return BorderSide(
                                          color: Color(0xFFFF5722),
                                          width: 1.0,
                                        );
                                      }
                                      return null;
                                    }),
                                  ),
                                  child: Text("Submit"),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Container(
                height: 380,
                width: width,
                decoration: BoxDecoration(color: Color(0xFF3D2E5C)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: width / 7,
                  ),
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Navigation', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                          SizedBox(height: 10),

                          InkWell(onTap: () {} ,child: Text('> Home')),
                          InkWell(onTap: () {} ,child: Text('> Services')),
                          InkWell(onTap: () {} ,child: Text('> Portfolio')),
                          InkWell(onTap: () {} ,child: Text('> About')),
                          InkWell(onTap: () {} ,child: Text('> Contact')),

                        ],
                      ),

                      SizedBox(width: 20.0),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Contact', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                          SizedBox(height: 10),

                          InkWell(onTap: () {} ,child: Text('📞 +92 307 000 9059')),
                          InkWell(onTap: () {} ,child: Text('📧 ars0009059@gmail.com')),
                          InkWell(onTap: () {} ,child: Text('⛯ RYK, Punjab, PK')),
                          InkWell(onTap: () {} ,child: Text('🌐 http://localhost:54809/')),
                          Text('🕗 Mon - Fri / 8am-10pm'),

                        ],
                      ),

                      SizedBox(width: 20.0),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Get the latest information', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                          SizedBox(height: 10),

                          Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.'),

                          SizedBox(height: 10),

                          Row(
                            children: [
                              SizedBox(
                                width: 220,
                                child: TextField(
                                  cursorColor: Color(0xFFFF5722),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hint: Text("Your email"),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  ),
                                ),
                              ),

                              SizedBox(width: 8.0),
                              InkWell(onTap: () {} ,child: Icon(FontAwesomeIcons.shareFromSquare, size: 24)),

                            ],
                          ),

                          SizedBox(height: 10),

                          Row(
                            children: [
                              InkWell(onTap: () {} ,child: Icon(FontAwesomeIcons.facebook,size: 14)),
                              SizedBox(width: 8.0),
                              InkWell(onTap: () {} ,child: Icon(FontAwesomeIcons.twitter,size: 14)),
                              SizedBox(width: 8.0),
                              InkWell(onTap: () {} ,child: Icon(FontAwesomeIcons.linkedinIn,size: 14)),
                              SizedBox(width: 8.0),
                              InkWell(onTap: () {} ,child: Icon(FontAwesomeIcons.instagram,size: 14)),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),

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

  final navItems = [
    TextButton(
      onPressed: () {
        // Scrollable.ensureVisible(eduKey.currentContext!);
      },
      child: const Text("Home"),
    ),
    TextButton(
      onPressed: () {
        // Scrollable.ensureVisible(eduKey.currentContext!);
      },
      child: const Text("Services"),
    ),
    TextButton(
      onPressed: () {
        // Scrollable.ensureVisible(eduKey.currentContext!);
      },
      child: const Text("Portfolio"),
    ),
    TextButton(
      onPressed: () {
        // Scrollable.ensureVisible(eduKey.currentContext!);
      },
      child: const Text("Contact"),
    ),
    TextButton(
      onPressed: () {
        // Scrollable.ensureVisible(eduKey.currentContext!);
      },
      child: const Text("Pages"),
    ),
  ];

  Widget rowUser(TextTheme textTheme, ColorScheme colorScheme) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFFF5722),
          child: Text('AA'),
        ),
        SizedBox(width: 4.0),
        Text(
          'arslan',
          style: textTheme.displaySmall?.copyWith(color: colorScheme.secondary),
        ),
      ],
    );
  }

  Widget rowContent() {
    return Row(children: navItems);
  }

}
