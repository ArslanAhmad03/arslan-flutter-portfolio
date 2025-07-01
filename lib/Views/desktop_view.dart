import 'package:avatar_glow/avatar_glow.dart' show AvatarGlow;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glass_kit/glass_kit.dart' show GlassContainer;
import 'package:my_portfolio/Widgets/customWidget.dart';
import 'package:my_portfolio/components/customContainer.dart';
import 'package:my_portfolio/components/customSizedBox.dart';
import 'package:my_portfolio/utils/drawerItems.dart';
import 'package:my_portfolio/utils/hireButton.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView>
    with TickerProviderStateMixin {
  late Animation _animation;
  late Animation _colourAnimation;
  late AnimationController _animationController;

  String fullText = "Arslan Ahmad ";
  String displayedText = '';
  int currentIndex = 0;

  void animateText() async {
    const duration = Duration(milliseconds: 50);
    while (currentIndex <= fullText.length) {
      await Future.delayed(duration);
      setState(() {
        displayedText = fullText.substring(0, currentIndex);
        currentIndex++;
      });
    }
  }

  @override
  void initState() {
    
    animateText();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation = Tween(begin: 10.0, end: 40.0).animate(_animationController);
    _colourAnimation = ColorTween(
      begin: Colors.white,
      end: Color(0xFFFF6B4A),
    ).animate(_animationController);

    _animationController.addListener(() {
      print(_animation.value);
      setState(() {});
    });

    // _animationController.forward();
    _animationController.repeat(period: Duration(seconds: 2));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    print('width $width');

    return Scaffold(
      appBar: AppBar(
        title: Text("flutterbytech"),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,

        actions: [
          HireButton(
            onTap: () {
              setState(() {});
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// intro
            CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
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
                          // rowUser(textTheme, colorScheme),
                          userInfo(textTheme, colorScheme),

                          Spacer(),

                          width > 921 ? DrawerItems() : SizedBox(),

                          Spacer(),

                          customElevatedButton(
                            onTap: () {},
                            title: "Let's Talk",
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: width / 10 - 50),

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
                            backgroundImage: NetworkImage(
                              'https://res.cloudinary.com/dbaszvjvp/image/upload/v1749195964/kpw7tcth9jt73b8psjun.jpg',
                            ),
                          ),
                        ),

                        Text.rich(
                          TextSpan(
                            text: "I'm ",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: displayedText, //'Arslan Ahmad, ',
                                style: textTheme.displaySmall?.copyWith(
                                  color: _colourAnimation
                                      .value, //colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              TextSpan(
                                text: 'App Developer',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Text(
                          ''' a self-motivated student of Computer Science with a passion to learn and grow. I'm open to working with a team of experts for personal and corporate growth in building technologies that have a positive impact on the world''',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            CustomSizedBox(
              height: width / 8 - 50,
              verticalEdge: 0.0,
              child: CarouselSlider(
                items: [
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/homecare.png',
                          width: 26,
                          height: 26,
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                          child: Text(
                            'HomeCare',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/countit.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                          child: Text(
                            'CashCounter',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/devicon.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                          child: Text(
                            'AttendanceApp',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/account.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                          child: Text(
                            'MyAccount',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/android.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                          child: Text(
                            'Android',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/grocery.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                          child: Text(
                            'GoGrocery',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/quran.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                          child: Text(
                            'HolyQuran',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
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

            /// about me
            CustomContainer(
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
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                              ),
                            ),

                            SizedBox(height: 10.0),

                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Name:',
                                              style: TextStyle(
                                                color: Color(0xFFFF5722),
                                              ),
                                            ),
                                            Text('arslan ahmad'),
                                            Text(
                                              'Email',
                                              style: TextStyle(
                                                color: Color(0xFFFF5722),
                                              ),
                                            ),
                                            Text('ars0009059@gmail.com'),
                                          ],
                                        ),

                                        SizedBox(width: 4.0),

                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Phone:',
                                              style: TextStyle(
                                                color: Color(0xFFFF5722),
                                              ),
                                            ),
                                            Text('+923070009059'),
                                            Text(
                                              'GitHub',
                                              style: TextStyle(
                                                color: Color(0xFFFF5722),
                                              ),
                                            ),
                                            Text('ArslanAhmad03'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                customElevatedButton(
                                  onTap: () {},
                                  title: "Contact Me",
                                ),
                                SizedBox(width: 8.0),
                                customElevatedButton(
                                  onTap: () {},
                                  title: "Download my resume",
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

            /// my service
            CustomSizedBox(
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
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' Services',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFF5722),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20.0),

                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),

                            SizedBox(height: 20.0),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                serviceCard(
                                  width: width,
                                  title: "UI/UX Design",
                                  image: "assets/images/download.jpeg",
                                ),

                                serviceCard(
                                  width: width,
                                  title: "App Design",
                                  image: "assets/images/what-is-flutter.png",
                                ),

                                serviceCard(
                                  width: width,
                                  title: "App Development",
                                  image: "assets/images/download.jpeg",
                                ),
                              ],
                            ),

                            SizedBox(height: 20.0),

                            customElevatedButton(
                              onTap: () {},
                              title: "See All",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// portfolio
            CustomContainer(
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
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Portfolio',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFF5722),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.0),

                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),

                            SizedBox(height: 20.0),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                portfolioCard(
                                  width: width,
                                  image: "assets/images/download.jpeg",
                                ),

                                portfolioCard(
                                  width: width,
                                  image: "assets/images/what-is-flutter.png",
                                ),
                              ],
                            ),

                            SizedBox(height: 20.0),

                            customElevatedButton(
                              onTap: () {},
                              title: "See All",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// contact
            CustomSizedBox(
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
                            Text(
                              "Let's make your brand brilliant!",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

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
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 8.0,
                                  ),
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
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 8.0,
                                  ),
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
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 8.0,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 20.0),

                            customElevatedButton(onTap: () {}, title: "Submit"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// info
            CustomContainer(
              height: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      alignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Navigation',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 10),

                            InkWell(onTap: () {}, child: Text('> Home')),
                            InkWell(onTap: () {}, child: Text('> Services')),
                            InkWell(onTap: () {}, child: Text('> Portfolio')),
                            InkWell(onTap: () {}, child: Text('> About')),
                            InkWell(onTap: () {}, child: Text('> Contact')),
                          ],
                        ),

                        // SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 10),

                            InkWell(
                              onTap: () {},
                              child: Text('📞 +92 307 000 9059'),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text('📧 ars0009059@gmail.com'),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text('⛯ RYK, Punjab, PK'),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text('🌐 http://localhost:54809/'),
                            ),
                            Text('🕗 Mon - Fri / 8am-10pm'),
                          ],
                        ),

                        // SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get the latest information',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Lorem ipsum dolor sit amet,\nadipiscing elit.',
                            ),

                            SizedBox(height: 10),

                            Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: TextField(
                                    cursorColor: Color(0xFFFF5722),
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hint: Text("Your email"),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(width: 4.0),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    FontAwesomeIcons.shareFromSquare,
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10),

                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    FontAwesomeIcons.facebook,
                                    size: 14,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    FontAwesomeIcons.twitter,
                                    size: 14,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    FontAwesomeIcons.linkedinIn,
                                    size: 14,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    FontAwesomeIcons.instagram,
                                    size: 14,
                                  ),
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
          ],
        ),
      ),

      drawer: width < 921 ? Drawer(child: ListView(children: navItems)) : null,
    );
  }
}
